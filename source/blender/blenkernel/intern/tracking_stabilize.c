/*
 * ***** BEGIN GPL LICENSE BLOCK *****
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 *
 * The Original Code is Copyright (C) 2011 Blender Foundation.
 * All rights reserved.
 *
 * Contributor(s): Blender Foundation,
 *                 Sergey Sharybin
 *                 Keir Mierle
 *
 * ***** END GPL LICENSE BLOCK *****
 */

/** \file blender/blenkernel/intern/tracking_stabilize.c
 *  \ingroup bke
 *
 * This file contains implementation of 2D frame stabilization.
 */

#include <limits.h>

#include "DNA_movieclip_types.h"

#include "BLI_utildefines.h"
#include "BLI_sort_utils.h"
#include "BLI_math.h"

#include "BKE_tracking.h"

#include "MEM_guardedalloc.h"
#include "IMB_imbuf_types.h"
#include "IMB_imbuf.h"

/* Calculate median point of markers of tracks marked as used for
 * 2D stabilization.
 *
 * NOTE: frame number should be in clip space, not scene space
 *
 * ** OBSOLETE ** will be replaced by rewrite
 */
static bool stabilization_median_point_get(MovieTracking *tracking, int framenr, float median[2])
{
	bool ok = false;
	float min[2], max[2];
	MovieTrackingTrack *track;

	INIT_MINMAX2(min, max);

	track = tracking->tracks.first;
	while (track) {
		if (track->flag & TRACK_USE_2D_STAB) {
			MovieTrackingMarker *marker = BKE_tracking_marker_get_exact(track, framenr);

			if (marker != NULL && (marker->flag & MARKER_DISABLED) == 0) {
				minmax_v2v2_v2(min, max, marker->pos);
				ok = true;
			}
		}

		track = track->next;
	}

	median[0] = (max[0] + min[0]) / 2.0f;
	median[1] = (max[1] + min[1]) / 2.0f;

	return ok;
}

/**
 * Calculate the contribution of a single track at implicitly given time point (frame).
 * Each track has a local reference frame, which is as close as possible to the global anchor_frame.
 * Thus the translation contribution is comprised of the offset relative to the image position at that
 * reference frame, plus a guess of the contribution for the time span between the anchor_frame and the
 * local reference frame of this track. The constant part of this contribution is precomputed initially.
 * At the anchor_frame, by definition the contribution of all tracks is zero, keeping the frame in place.
 *
 * @param tracking marker data to use as contribution for current frame.
 * @param result_offset total cumulated contribution of this track,
 *                      relative to the stabilization anchor_frame
 */
static void translation_contribution(MovieTrackingTrack *track, MovieTrackingMarker *marker,
                                     float result_offset[2])
{
	add_v2_v2v2(result_offset, track->stabilization_offset_base, marker->pos);
}

/**
 * Similar to the #translation_contribution, the rotation contribution is comprised of the contribution
 * by this individual track, and the averaged contribution from anchor_frame to the ref point of this track.
 * - contribution is in terms of angles, -pi < angle < +pi, and all averaging happens in this domain
 * - yet the actual measurement happens as vector between center of frame and the tracking point
 * - moreover, the frame center has to be compensated for the already determined shift offset,
 *   in order to get the pure rotation around the image center. To turn this into a \e contribution,
 *   the likewise corrected angle at the reference frame has to be subtracted, to get only the pure
 *   angle difference this tracking point has captured.
 * - to get from vectors to angles, we have to go through an arcus tangens, which involves the issue
 *   of the definition range: the resulting angles will flip by 360deg when the measured vector passes
 *   from the 2nd to the third quadrant, thus messing up the average calculation. Since \e any tracking
 *   point might be used, these problems are quite common in practice.
 * - thus we perform the subtraction of the reference and the addition of the baseline contribution
 *   in polar coordinates as simple addition of angles; since these parts are fixed, we can bake
 *   them into a rotation matrix. With this approach, the border of the arcus tangens definition range
 *   will be reached only, when the \e whole contribution approaches +- 180deg, meaning we've already
 *   tilted the frame upside down. This situation is way less common and can be tolerated.
 */
static void rotation_contribution(MovieTrackingTrack *track, MovieTrackingMarker *marker,
                                  float averaged_translation_contribution[2],
                                  float *result_angle)
{
	float pos[2];
	float frame_center[2];
	copy_v2_fl(frame_center, 0.5f);
	sub_v2_v2v2(pos, marker->pos, frame_center);
	sub_v2_v2  (pos, averaged_translation_contribution);

	mul_m2v2(track->stabilization_rotation_base, pos);

	*result_angle = atan2f(pos[1],pos[0]);
}


/**
 * Get tracking data, if available and applicable for this frame.
 * We use only data recorded for this tracking marker on the exact frame requested.
 * But on condition that the anchor_frame lies \e within the range covered by this track's data,
 * we allow to extend the usage of the first / last data on a track into the uncovered area.
 * This mechanism causes the stabilization to "stall" at the beginning and end of the clip
 * with the most outlying values determined, instead of jumping back to uncompensated state.
 */
static MovieTrackingMarker *get_tracking_data(MovieTrackingTrack *track, int framenr, int anchor_frame)
{
	MovieTrackingMarker *marker = BKE_tracking_marker_get(track, framenr);
	MovieTrackingMarker *first, *last;

	if (!marker || (marker->flag & MARKER_DISABLED)) {
		return NULL;
	}
	else if (marker->framenr == framenr) {
		return marker;
	}

	BLI_assert(marker);
	BLI_assert(0 < track->markersnr);

	first = &track->markers[0];
	last  = &track->markers[track->markersnr - 1];

	if ((marker == first && marker->framenr < anchor_frame) ||
	    (marker == last  && marker->framenr > anchor_frame))
		return marker;
	else
		return NULL;
}

/**
 * Weighted average of the per track cumulated contributions at given frame
 * @return true if all desired calculations could be done and all averages are available
 * @note even if the result is not \c true, the returned translation and angle are
 *       always sensible and as good as can be. Especially in the initialization phase
 *       we might not be able to get any average (yet) or get only a translation value.
 *       Since initialization visits tracks in a specific order, starting from anchor_frame,
 *       the result is logically correct non the less. But under normal operation conditions,
 *       a result of \c false should disable the stabilization function
 */
static bool average_track_contributions(MovieTracking *tracking, int framenr,
                                        float translation[2], float* angle)
{
	bool ok; float weight_sum;
	MovieTrackingTrack *track;
	int anchor = tracking->stabilization.anchor_frame;
	BLI_assert(tracking->stabilization.flag & TRACKING_2D_STABILIZATION);

	zero_v2(translation);
	*angle = 0.0f;

	ok = false;
	weight_sum = 0.0f;
	for (track = tracking->tracks.first; track; track = track->next) {
		if (!track->is_init_for_stabilization) continue;
		if (track->flag & TRACK_USE_2D_STAB) {
			MovieTrackingMarker *marker = get_tracking_data(track, framenr, anchor);
			if (marker) {
				float offset[2];
				weight_sum += track->weight;
				translation_contribution(track, marker, offset);
				mul_v2_fl(offset, track->weight);
				add_v2_v2(translation, offset);
				ok = (weight_sum > 0);
			}
		}
	}
	if (!ok) return false;

	translation[0] /= weight_sum;
	translation[1] /= weight_sum;

	if (!(tracking->stabilization.flag & TRACKING_STABILIZE_ROTATION)) return ok;

	ok = false;
	weight_sum = 0.0f;
	for (track = tracking->tracks.first; track; track = track->next) {
		if (!track->is_init_for_stabilization) continue;
		if (track->flag & TRACK_USE_2D_STAB_ROT) {
			MovieTrackingMarker *marker = get_tracking_data(track, framenr, anchor);
			if (marker) {
				float rotation;
				weight_sum += track->weight;
				rotation_contribution(track, marker, translation, &rotation);
				*angle += rotation * track->weight;
				ok = (weight_sum > 0);
			}
		}
	}
	if (!ok) return false;

	*angle /= weight_sum;
	return ok;
}


typedef struct TrackInitOrder {
	int sort_value;
	int reference_frame;
	MovieTrackingTrack *data;
} TrackInitOrder;

/**
 * reorder tracks starting with those providing a tracking data frame
 * closest to the global anchor_frame. Tracks with a gap at anchor_frame or
 * starting farer away from anchor_frame altogether will be visited later.
 * This allows to build up baseline contributions incrementally.
 *
 * @param order array for sorting the tracks. Must be of suitable size to hold all tracks.
 * @return number of actually usable tracks, can be less than the overall number of tracks
 * @remark after returning, the order array holds entries up to the number of usable tracks,
 *         appropriately sorted starting with the closest tracks. Initialisation includes
 *         disabled tracks, since they might be enabled through automation later.
 */
static int establish_track_initialization_order(MovieTracking *tracking, TrackInitOrder order[])
{
	size_t tracknr = 0;
	MovieTrackingTrack *track;
	int anchor_frame = tracking->stabilization.anchor_frame;

	for (track = tracking->tracks.first; track; track = track->next) {
		MovieTrackingMarker *marker;
		order[tracknr].data = track;
		marker = BKE_tracking_marker_get(track, anchor_frame);
		if (marker &&
			(track->flag & (TRACK_USE_2D_STAB | TRACK_USE_2D_STAB_ROT))) {

			order[tracknr].sort_value = abs(marker->framenr - anchor_frame);
			order[tracknr].reference_frame = marker->framenr;
			++tracknr;
		}
	}
	if (tracknr) {
		qsort(order, tracknr, sizeof(TrackInitOrder), BLI_sortutil_cmp_int);
	}
	return tracknr;
}


/**
 * Setup the constant part of this track's contribution to the determined frame movement.
 * Tracks usually don't provide tracking data for every frame. Thus, for determining data
 * at a given frame, we split up the contribution into a part covered by actual measurements
 * on this track, and the initial gap between this track's reference frame and the global
 * anchor_frame. The (missing) data for the gap can be substituted by the average offset
 * observed by the other tracks covering the gap. This approximation doesn't introduce
 * wrong data, but it records data with incorrect weight. A totally correct solution
 * would require us to average the contribution per frame, and then integrate stepwise
 * over all frames -- which of course would be way more expensive, especially for longer
 * clips. To the contrary, our solution cumulates the total contribution per track and
 * averages afterwards over all tracks; it can thus be calculated just based on the
 * data of a single frame, plus the "baseline" for the reference frame, which we're
 * computing here.
 *
 * Since we're averaging \e contributions, we have to calculate the \e difference of
 * the measured position at current frame and the position at the reference frame.
 * But the "reference" part of this difference is constant and can thus be packed
 * together with the baseline contribution into a single precomputed vector per track.
 *
 * In case of the rotation contribution, the principle is the same, but we have to
 * compensate for the already determined translation, because each rotation contribution
 * needs to be measured relative to the \e current image center, otherwise the rotation
 * performed for stabilization would not cancel out the measured rotation precisely.
 * To circumvent problems with the definition range of the arcus tangens function,
 * we perform this baseline addition and reference angle subtraction in polar
 * coordinates and bake this operation into a precomputed rotation matrix.
 *
 * @param track to initialize
 * @param reference_frame local for this track, the closest pick to the global anchor_frame
 * @param average_translation observed by the \e other tracks for the gap between
 *                            reference_frame and anchor_frame. This average must not contain
 *                            contributions of not yet initialized frames
 * @note when done, this track is marked as initialized
 */
static void initialize_track_for_stabilization(MovieTrackingTrack *track, int reference_frame,
                                               const float average_translation[2], float average_angle)
{
	float pos[2], angle;
	float frame_center[2];

	MovieTrackingMarker *marker = BKE_tracking_marker_get_exact(track, reference_frame);
	BLI_assert(marker); /* otherwise logic for initialization order is broken */

	sub_v2_v2v2(track->stabilization_offset_base, average_translation, marker->pos);

	copy_v2_fl(frame_center, 0.5f);
	sub_v2_v2v2(pos, marker->pos, frame_center);
	sub_v2_v2  (pos, average_translation);

	angle = average_angle - atan2f(pos[1],pos[0]);
	rotate_m2(track->stabilization_rotation_base, angle);

	track->is_init_for_stabilization = true;
}


static void initialize_all_tracks(MovieTracking *tracking)
{
	size_t i, tracknr = 0;
	MovieTrackingTrack *track;
	TrackInitOrder *order;

	/* attempt to start initialization at anchor_frame.
	 * By definition, offset contribution is zero there */
	int reference_frame = tracking->stabilization.anchor_frame;
	float average_translation[2], average_angle=0;
	zero_v2(average_translation);

	for (track = tracking->tracks.first; track; track = track->next) {
		track->is_init_for_stabilization = false;
		++tracknr;
	}
	if (!tracknr) return;

	order = MEM_mallocN(tracknr * sizeof(TrackInitOrder), "stabilization track order");
	if (!order) return;

	tracknr = establish_track_initialization_order(tracking, order);
	if (!tracknr) goto cleanup;

	for (i=0; i < tracknr; ++i) {
		track = order[i].data;
		if (reference_frame != order[i].reference_frame) {
			reference_frame = order[i].reference_frame;
			average_track_contributions(tracking, reference_frame, average_translation, &average_angle);
		}
		initialize_track_for_stabilization(track, reference_frame, average_translation, average_angle);
	}

	cleanup:
	MEM_freeN(order);
	return;
}


/* Calculate stabilization data (translation, scale and rotation) from
 * given median of first and current frame medians, tracking data and
 * frame number.
 *
 * NOTE: frame number should be in clip space, not scene space
 */
static void stabilization_calculate_data(MovieTracking *tracking, int framenr, int width, int height,
                                         float firstmedian[2], float median[2],
                                         float translation[2], float *scale, float *angle)
{
	MovieTrackingStabilization *stab = &tracking->stabilization;

	*scale = (stab->scale - 1.0f) * stab->scaleinf + 1.0f;
	*angle = 0.0f;

	translation[0] = (firstmedian[0] - median[0]) * width * (*scale);
	translation[1] = (firstmedian[1] - median[1]) * height * (*scale);

	mul_v2_fl(translation, stab->locinf);

	if ((stab->flag & TRACKING_STABILIZE_ROTATION) && stab->rot_track && stab->rotinf) {
		MovieTrackingMarker *marker;
		float a[2], b[2];
		float x0 = (float)width / 2.0f, y0 = (float)height / 2.0f;
		float x = median[0] * width, y = median[1] * height;

		marker = BKE_tracking_marker_get_exact(stab->rot_track, 1);
		if (marker != NULL && (marker->flag & MARKER_DISABLED) == 0) {
			sub_v2_v2v2(a, marker->pos, firstmedian);
			a[0] *= width;
			a[1] *= height;

			marker = BKE_tracking_marker_get_exact(stab->rot_track, framenr);
			if (marker != NULL && (marker->flag & MARKER_DISABLED) == 0) {
				sub_v2_v2v2(b, marker->pos, median);
				b[0] *= width;
				b[1] *= height;

				*angle = -atan2f(a[0] * b[1] - a[1] * b[0], a[0] * b[0] + a[1] * b[1]);
				*angle *= stab->rotinf;

				/* convert to rotation around image center */
				translation[0] -= (x0 + (x - x0) * cosf(*angle) - (y - y0) * sinf(*angle) - x) * (*scale);
				translation[1] -= (y0 + (x - x0) * sinf(*angle) + (y - y0) * cosf(*angle) - y) * (*scale);
			}
		}
	}
}

/* Calculate factor of a scale, which will eliminate black areas
 * appearing on the frame caused by frame translation.
 */
static float stabilization_calculate_autoscale_factor(MovieTracking *tracking, int width, int height)
{
	float firstmedian[2];
	MovieTrackingStabilization *stab = &tracking->stabilization;
	float aspect = tracking->camera.pixel_aspect;

	/* Early output if stabilization data is already up-to-date. */
	if (stab->ok)
		return stab->scale;

	/* See comment in BKE_tracking_stabilization_data_get about first frame. */
	if (stabilization_median_point_get(tracking, 1, firstmedian)) {
		int sfra = INT_MAX, efra = INT_MIN, cfra;
		float scale = 1.0f;
		MovieTrackingTrack *track;

		stab->scale = 1.0f;

		/* Calculate frame range of tracks used for stabilization. */
		track = tracking->tracks.first;
		while (track) {
			if (track->flag & TRACK_USE_2D_STAB ||
			    ((stab->flag & TRACKING_STABILIZE_ROTATION) && track == stab->rot_track))
			{
				sfra = min_ii(sfra, track->markers[0].framenr);
				efra = max_ii(efra, track->markers[track->markersnr - 1].framenr);
			}

			track = track->next;
		}

		/* For every frame we calculate scale factor needed to eliminate black
		 * aread and choose largest scale factor as final one.
		 */
		for (cfra = sfra; cfra <= efra; cfra++) {
			float median[2];
			float translation[2], angle, tmp_scale;
			int i;
			float mat[4][4];
			float points[4][2] = {{0.0f, 0.0f}, {0.0f, height}, {width, height}, {width, 0.0f}};
			float si, co;

			if (!stabilization_median_point_get(tracking, cfra, median)) {
				continue;
			}

			stabilization_calculate_data(tracking, cfra, width, height, firstmedian, median, translation,
			                             &tmp_scale, &angle);

			BKE_tracking_stabilization_data_to_mat4(width, height, aspect, translation, 1.0f, angle, mat);

			si = sinf(angle);
			co = cosf(angle);

			for (i = 0; i < 4; i++) {
				int j;
				float a[3] = {0.0f, 0.0f, 0.0f}, b[3] = {0.0f, 0.0f, 0.0f};

				copy_v3_v3(a, points[i]);
				copy_v3_v3(b, points[(i + 1) % 4]);

				mul_m4_v3(mat, a);
				mul_m4_v3(mat, b);

				for (j = 0; j < 4; j++) {
					float point[3] = {points[j][0], points[j][1], 0.0f};
					float v1[3], v2[3];

					sub_v3_v3v3(v1, b, a);
					sub_v3_v3v3(v2, point, a);

					if (cross_v2v2(v1, v2) >= 0.0f) {
						const float rotDx[4][2] = {{1.0f, 0.0f}, {0.0f, -1.0f}, {-1.0f, 0.0f}, {0.0f, 1.0f}};
						const float rotDy[4][2] = {{0.0f, 1.0f}, {1.0f, 0.0f}, {0.0f, -1.0f}, {-1.0f, 0.0f}};

						float dx = translation[0] * rotDx[j][0] + translation[1] * rotDx[j][1],
						      dy = translation[0] * rotDy[j][0] + translation[1] * rotDy[j][1];

						float w, h, E, F, G, H, I, J, K, S;

						if (j % 2) {
							w = (float)height / 2.0f;
							h = (float)width / 2.0f;
						}
						else {
							w = (float)width / 2.0f;
							h = (float)height / 2.0f;
						}

						E = -w * co + h * si;
						F = -h * co - w * si;

						if ((i % 2) == (j % 2)) {
							G = -w * co - h * si;
							H = h * co - w * si;
						}
						else {
							G = w * co + h * si;
							H = -h * co + w * si;
						}

						I = F - H;
						J = G - E;
						K = G * F - E * H;

						S = (-w * I - h * J) / (dx * I + dy * J + K);

						scale = max_ff(scale, S);
					}
				}
			}
		}

		stab->scale = scale;

		if (stab->maxscale > 0.0f)
			stab->scale = min_ff(stab->scale, stab->maxscale);
	}
	else {
		stab->scale = 1.0f;
	}

	stab->ok = true;

	return stab->scale;
}

/* Get stabilization data (translation, scaling and angle) for a given frame.
 *
 * NOTE: frame number should be in clip space, not scene space
 */
void BKE_tracking_stabilization_data_get(MovieTracking *tracking, int framenr, int width, int height,
                                         float translation[2], float *scale, float *angle)
{
	float firstmedian[2], median[2];
	MovieTrackingStabilization *stab = &tracking->stabilization;

	/* Early output if stabilization is disabled. */
	if ((stab->flag & TRACKING_2D_STABILIZATION) == 0) {
		zero_v2(translation);
		*scale = 1.0f;
		*angle = 0.0f;

		return;
	}

	/* Even if tracks does not start at frame 1, their position will
	 * be estimated at this frame, which will give reasonable result
	 * in most of cases.
	 *
	 * However, it's still better to replace this with real first
	 * frame number at which tracks are appearing.
	 */
	if (stabilization_median_point_get(tracking, 1, firstmedian) &&
	    stabilization_median_point_get(tracking, framenr, median))
	{
		if ((stab->flag & TRACKING_AUTOSCALE) == 0)
			stab->scale = 1.0f;

		if (!stab->ok) {
			if (stab->flag & TRACKING_AUTOSCALE)
				stabilization_calculate_autoscale_factor(tracking, width, height);

			stabilization_calculate_data(tracking, framenr, width, height, firstmedian, median,
			                             translation, scale, angle);

			stab->ok = true;
		}
		else {
			stabilization_calculate_data(tracking, framenr, width, height, firstmedian, median,
			                             translation, scale, angle);
		}
	}
	else {
		zero_v2(translation);
		*scale = 1.0f;
		*angle = 0.0f;
	}
}

/* Stabilize given image buffer using stabilization data for
 * a specified frame number.
 *
 * NOTE: frame number should be in clip space, not scene space
 */
ImBuf *BKE_tracking_stabilize_frame(MovieTracking *tracking, int framenr, ImBuf *ibuf,
                                    float translation[2], float *scale, float *angle)
{
	float tloc[2], tscale, tangle;
	MovieTrackingStabilization *stab = &tracking->stabilization;
	ImBuf *tmpibuf;
	int width = ibuf->x, height = ibuf->y;
	float aspect = tracking->camera.pixel_aspect;
	float mat[4][4];
	int j, filter = tracking->stabilization.filter;
	void (*interpolation)(struct ImBuf *, struct ImBuf *, float, float, int, int) = NULL;
	int ibuf_flags;

	if (translation)
		copy_v2_v2(tloc, translation);

	if (scale)
		tscale = *scale;

	/* Perform early output if no stabilization is used. */
	if ((stab->flag & TRACKING_2D_STABILIZATION) == 0) {
		if (translation)
			zero_v2(translation);

		if (scale)
			*scale = 1.0f;

		if (angle)
			*angle = 0.0f;

		return ibuf;
	}

	/* Allocate frame for stabilization result. */
	ibuf_flags = 0;
	if (ibuf->rect)
		ibuf_flags |= IB_rect;
	if (ibuf->rect_float)
		ibuf_flags |= IB_rectfloat;

	tmpibuf = IMB_allocImBuf(ibuf->x, ibuf->y, ibuf->planes, ibuf_flags);

	/* Calculate stabilization matrix. */
	BKE_tracking_stabilization_data_get(tracking, framenr, width, height, tloc, &tscale, &tangle);
	BKE_tracking_stabilization_data_to_mat4(ibuf->x, ibuf->y, aspect, tloc, tscale, tangle, mat);
	invert_m4(mat);

	if (filter == TRACKING_FILTER_NEAREST)
		interpolation = nearest_interpolation;
	else if (filter == TRACKING_FILTER_BILINEAR)
		interpolation = bilinear_interpolation;
	else if (filter == TRACKING_FILTER_BICUBIC)
		interpolation = bicubic_interpolation;
	else
		/* fallback to default interpolation method */
		interpolation = nearest_interpolation;

	/* This function is only used for display in clip editor and
	 * sequencer only, which would only benefit of using threads
	 * here.
	 *
	 * But need to keep an eye on this if the function will be
	 * used in other cases.
	 */
#pragma omp parallel for if (tmpibuf->y > 128)
	for (j = 0; j < tmpibuf->y; j++) {
		int i;
		for (i = 0; i < tmpibuf->x; i++) {
			float vec[3] = {i, j, 0.0f};

			mul_v3_m4v3(vec, mat, vec);

			interpolation(ibuf, tmpibuf, vec[0], vec[1], i, j);
		}
	}

	if (tmpibuf->rect_float)
		tmpibuf->userflags |= IB_RECT_INVALID;

	if (translation)
		copy_v2_v2(translation, tloc);

	if (scale)
		*scale = tscale;

	if (angle)
		*angle = tangle;

	return tmpibuf;
}

/* Get 4x4 transformation matrix which corresponds to
 * stabilization data and used for easy coordinate
 * transformation.
 *
 * NOTE: The reason it is 4x4 matrix is because it's
 *       used for OpenGL drawing directly.
 */
void BKE_tracking_stabilization_data_to_mat4(int width, int height, float aspect,
                                             float translation[2], float scale, float angle,
                                             float mat[4][4])
{
	float translation_mat[4][4], rotation_mat[4][4], scale_mat[4][4],
	      center_mat[4][4], inv_center_mat[4][4],
	      aspect_mat[4][4], inv_aspect_mat[4][4];
	float scale_vector[3] = {scale, scale, scale};

	unit_m4(translation_mat);
	unit_m4(rotation_mat);
	unit_m4(scale_mat);
	unit_m4(center_mat);
	unit_m4(aspect_mat);

	/* aspect ratio correction matrix */
	aspect_mat[0][0] = 1.0f / aspect;
	invert_m4_m4(inv_aspect_mat, aspect_mat);

	/* image center as rotation center
	 *
	 * Rotation matrix is constructing in a way rotation happens around image center,
	 * and it's matter of calculating translation in a way, that applying translation
	 * after rotation would make it so rotation happens around median point of tracks
	 * used for translation stabilization.
	 */
	center_mat[3][0] = (float)width / 2.0f;
	center_mat[3][1] = (float)height / 2.0f;
	invert_m4_m4(inv_center_mat, center_mat);

	size_to_mat4(scale_mat, scale_vector);       /* scale matrix */
	add_v2_v2(translation_mat[3], translation);  /* translation matrix */
	rotate_m4(rotation_mat, 'Z', angle);         /* rotation matrix */

	/* compose transformation matrix */
	mul_serie_m4(mat, translation_mat, center_mat, aspect_mat, rotation_mat, inv_aspect_mat,
	             scale_mat, inv_center_mat, NULL);
}
