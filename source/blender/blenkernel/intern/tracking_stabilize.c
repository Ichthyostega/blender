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
 *                 Ichthyostega (H.Voßeler)
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
#include "DNA_scene_types.h"

#include "BLI_utildefines.h"
#include "BLI_sort_utils.h"
#include "BLI_math_vector.h"
#include "BLI_math.h"

#include "BKE_tracking.h"

#include "MEM_guardedalloc.h"
#include "IMB_imbuf_types.h"
#include "IMB_imbuf.h"


/* == Parameterization constants == */

/**
 * when measuring the scale changes relative to the rotation pivot point, it might happen
 * accidentally that a probe point (tracking point), which doesn't actually move on a circular path,
 * gets very close to the pivot point, causing the measured scale contribution to go toward infinity.
 * We damp this undesired effect by adding a bias (floor) to the measured distances, which will
 * dominate very small distances and thus cause the corresponding track's contribution to diminish.
 * Measurements happen in normalized (0...1) coordinates within a frame.
 */
static float SCALE_ERROR_LIMIT_BIAS = 0.01;



/* == private working data == */

/**
 * Per track baseline for stabilization, defined at reference frame.
 * A track's reference frame is chosen as close as possible to the (global) anchor_frame.
 * Baseline holds the constant part of each track's contribution to the observed movement;
 * it is calculated at initialization pass, using the measurement value at reference frame
 * plus the average contribution to fill the gap between global anchor_frame and the
 * reference frame for this track.
 */
typedef struct TrackStabilizationBase {
	float stabilization_offset_base[2];
	float stabilization_rotation_base[2][2]; /* measured relative to translated pivot */
	float stabilization_scale_base;          /* measured relative to translated pivot */
	bool is_init_for_stabilization;
} TrackStabilizationBase;

/**
 * Tracks are reordered for initialization, starting as close as possible to anchor_frame
 */
typedef struct TrackInitOrder {
	int sort_value;
	int reference_frame;
	MovieTrackingTrack *data;
} TrackInitOrder;



/**
 * Calculate the contribution of a single track at implicitly given time point (frame).
 * Each track has a local reference frame, which is as close as possible to the global anchor_frame.
 * Thus the translation contribution is comprised of the offset relative to the image position at that
 * reference frame, plus a guess of the contribution for the time span between the anchor_frame and the
 * local reference frame of this track. The constant part of this contribution is precomputed initially.
 * At the anchor_frame, by definition the contribution of all tracks is zero, keeping the frame in place.
 *
 * @param trackRef per track baseline contribution at reference frame; filled in at initialization
 * @param marker tracking data to use as contribution for current frame.
 * @param result_offset total cumulated contribution of this track,
 *                      relative to the stabilization anchor_frame,
 *                      in normalized (0...1) coordinates.
 */
static void translation_contribution(TrackStabilizationBase *trackRef, MovieTrackingMarker *marker,
                                     float result_offset[2])
{
	add_v2_v2v2(result_offset, trackRef->stabilization_offset_base, marker->pos);
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
 * - when activated, also changes in image scale relative to the rotation center can be picked up.
 *   To handle those values in the same framework, we average the scales as logarithms.
 *  @param aspect total aspect ratio of the undistorted image (includes fame and pixel aspect)
 */
static void rotation_contribution(TrackStabilizationBase *trackRef, MovieTrackingMarker *marker, float aspect,
                                  float target_pos[2], float averaged_translation_contribution[2],
                                  float *result_angle, float *result_scale)
{
	float len;
	float pos[2];
	float pivot[2];
	copy_v2_fl(pivot, 0.5f); /* use center of frame as hard wired pivot */
	add_v2_v2(pivot, averaged_translation_contribution);
	sub_v2_v2(pivot, target_pos);
	sub_v2_v2v2(pos, marker->pos, pivot);

	pos[0] *= aspect;
	mul_m2v2(trackRef->stabilization_rotation_base, pos);

	*result_angle = atan2f(pos[1],pos[0]);

	len = len_v2(pos) + SCALE_ERROR_LIMIT_BIAS;
	*result_scale = len * trackRef->stabilization_scale_base;
	BLI_assert(0.0 < *result_scale);
}


static bool is_init_for_stabilization(MovieTrackingTrack *track) {
	TrackStabilizationBase *base = track->stabilizationBase;
	return (base && base->is_init_for_stabilization);
}

static bool is_usable_for_stabilization(MovieTrackingTrack *track) {
	return (track->flag & TRACK_USE_2D_STAB) &&
			is_init_for_stabilization(track);
}


static int search_closest_marker_index(MovieTrackingTrack *track, int ref_frame) {
	MovieTrackingMarker *markers = track->markers;
	int end = track->markersnr;
	int i = track->last_marker;

	i = MAX2(0, i);
	i = MIN2(i, end - 1);
	for ( ; i < end - 1 && markers[i].framenr <= ref_frame; ++i);
	for ( ; 0 < i && markers[i].framenr > ref_frame; --i);

	track->last_marker = i;
	return i;
}

static void retrieve_next_higher_usable_frame(MovieTrackingTrack *track, int i, int ref_frame, int *next_higher) {
	MovieTrackingMarker *markers = track->markers;
	int end = track->markersnr;
	BLI_assert(0 <= i && i < end);

	/* TODO should also consider the track_weight, but this would require to get automation data for markers[i].framenr */
	while (i < end && (markers[i].framenr < ref_frame || (markers[i].flag & MARKER_DISABLED))) {
		++i;
	}
	if (i < end && markers[i].framenr < *next_higher) {
		BLI_assert(markers[i].framenr >= ref_frame);
		*next_higher = markers[i].framenr;
	}
}

static void	retrieve_next_lower_usable_frame(MovieTrackingTrack *track, int i, int ref_frame, int *next_lower) {
	MovieTrackingMarker *markers = track->markers;
	int end = track->markersnr;
	BLI_assert(0 <= i && i < end);

	/* TODO should also consider the track_weight, but this would require to get automation data for markers[i].framenr */
	while (i >= 0 && (markers[i].framenr > ref_frame || (markers[i].flag & MARKER_DISABLED))) {
		--i;
	}
	if (0 <= i && markers[i].framenr > *next_lower) {
		BLI_assert(markers[i].framenr <= ref_frame);
		*next_lower = markers[i].framenr;
	}
}


/**
 * find closest frames with usable stabilization data.
 * A frame counts as usable when there is at least one track marked for translation stabilization,
 * which has an enabled tracking marker at this very frame. We search both for the next lower
 * and next higher position, to allow the caller to interpolate gaps and to extrapolate
 * at the ends of the definition range.
 * @remarks regarding performance note that the individual tracks will cache the last search position.
 */
static void find_next_working_frames(MovieTracking *tracking, int framenr, int *next_lower, int *next_higher) {
	MovieTrackingTrack *track;
	for (track = tracking->tracks.first; track; track = track->next)
		if (is_usable_for_stabilization(track)){
			int startpoint = search_closest_marker_index(track, framenr);
			retrieve_next_higher_usable_frame(track, startpoint, framenr, next_higher);
			retrieve_next_lower_usable_frame(track, startpoint, framenr, next_lower);
		}
}


/**
 * Retrieve tracking data, if available and applicable for this frame.
 * The returned weight value signals the validity; data recorded for this tracking marker
 * on the exact requested frame is output with the full weight of this track, while gaps
 * in the data sequence cause the weight to go to zero.
 */
static MovieTrackingMarker *get_tracking_data_point(MovieTrackingTrack *track, int framenr,
                                                    float *weight)
{
	MovieTrackingMarker *marker = BKE_tracking_marker_get(track, framenr);

	if (marker && marker->framenr == framenr && !(marker->flag & MARKER_DISABLED)) {
		*weight = track->weight;
		return marker;
	}
	else {
		/* no marker at this frame (=gap) or marker disabled */
		*weight = 0.0f;
		return NULL;
	}
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
static bool average_track_contributions(MovieTracking *tracking, int framenr, float aspect,
                                        float translation[2], float* angle, float* scale_step)
{
	bool ok; float weight_sum;
	MovieTrackingTrack *track;
	MovieTrackingStabilization *stab = &tracking->stabilization;
	BLI_assert(stab->flag & TRACKING_2D_STABILIZATION);

	zero_v2(translation);
	*scale_step = 0.0f; /* logarithm */
	*angle = 0.0f;

	ok = false;
	weight_sum = 0.0f;
	for (track = tracking->tracks.first; track; track = track->next) {
		if (!is_init_for_stabilization(track)) continue;
		if (track->flag & TRACK_USE_2D_STAB) {
			float weight = 0.0f;
			MovieTrackingMarker *marker = get_tracking_data_point(track, framenr, &weight);
			if (marker) {
				float offset[2];
				weight_sum += weight;
				translation_contribution(track->stabilizationBase, marker, offset);
				mul_v2_fl(offset, weight);
				add_v2_v2(translation, offset);
				ok = (weight_sum > 0);
			}
		}
	}
	if (!ok) return false;

	translation[0] /= weight_sum;
	translation[1] /= weight_sum;

	if (!(stab->flag & TRACKING_STABILIZE_ROTATION)) return ok;

	ok = false;
	weight_sum = 0.0f;
	for (track = tracking->tracks.first; track; track = track->next) {
		if (!is_init_for_stabilization(track)) continue;
		if (track->flag & TRACK_USE_2D_STAB_ROT) {
			float weight = 0.0f;
			MovieTrackingMarker *marker = get_tracking_data_point(track, framenr, &weight);
			if (marker) {
				float rotation, scale;
				weight_sum += weight;
				rotation_contribution(track->stabilizationBase, marker, aspect, stab->target_pos, translation, &rotation, &scale);
				*angle += rotation * weight;
				if (stab->flag & TRACKING_STABILIZE_SCALE)
					*scale_step += logf(scale) * weight;
				else *scale_step = 0;
				ok = (weight_sum > 0);
			}
		}
	}
	if (ok) {
		*scale_step /= weight_sum;
		*angle /= weight_sum;
	}
	else {
		/* we reach this point because translation could be calculated,
		 * but rotation/scale found no data to work on. */
		*scale_step = 0.0f;
		*angle = 0.0f;
	}
	return true;
}


/**
 * linear interpolation of data retrieved at two measurement points.
 * This function is used to fill gaps in the middle of the covered area,
 * at frames without any usable tracks for stabilization.
 *
 * @param framenr position to interpolate for
 * @param frame_a valid measurement point below framenr
 * @param frame_b valid measurement point above framenr
 * @return \c true if both measurements could actually be retrieved.
 *         Otherwise output parameters remain unaltered
 */
static bool interpolate_averaged_track_contributions(MovieTracking *tracking,
                                                     int framenr, int frame_a, int frame_b, float aspect,
                                                     float translation[2], float* angle, float* scale_step) {
	float t, s;
	float trans_a[2], trans_b[2];
	float angle_a, angle_b;
	float scale_a, scale_b;
	bool success = false;

	BLI_assert(frame_a <= frame_b);
	BLI_assert(frame_a <= framenr);
	BLI_assert(framenr <= frame_b);

	t = ((float)framenr - frame_a) / (frame_b - frame_a);
	s = 1.0f - t;

	success = average_track_contributions(tracking, frame_a, aspect, trans_a, &angle_a, &scale_a);
	if (!success) return false;
	success = average_track_contributions(tracking, frame_b, aspect, trans_b, &angle_b, &scale_b);
	if (!success) return false;

	interp_v2_v2v2(translation, trans_a, trans_b, t);
	*scale_step = s * scale_a + t * scale_b;
	*angle = s * angle_a + t * angle_b;
	return true;
}


/**
 * reorder tracks starting with those providing a tracking data frame
 * closest to the global anchor_frame. Tracks with a gap at anchor_frame or
 * starting farer away from anchor_frame altogether will be visited later.
 * This allows to build up baseline contributions incrementally.
 *
 * @param order array for sorting the tracks. Must be of suitable size to hold all tracks.
 * @return number of actually usable tracks, can be less than the overall number of tracks
 * @remark after returning, the order array holds entries up to the number of usable tracks,
 *         appropriately sorted starting with the closest tracks. Initialization includes
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
 * @param aspect total aspect ratio of the undistorted image (includes fame and pixel aspect)
 * @param target_pos possibly animated target position as set by the user for the reference_frame
 * @param average_translation value observed by the \e other tracks for the gap between
 *                            reference_frame and anchor_frame. This average must not contain
 *                            contributions of not yet initialized frames
 * @param average_scale_step image scale factor observed on average by the other tracks
 *                            for this frame. This value is recorded and averaged as logarithm.
 *                            The recorded scale changes are damped for very small contributions,
 *                            to limit the effect of probe points approaching the pivot too closely.
 * @note when done, this track is marked as initialized
 */
static void initialize_track_for_stabilization(MovieTrackingTrack *track, int reference_frame, float aspect,
                                               const float target_pos[2], const float average_translation[2],
                                               float average_angle, float average_scale_step)
{
	float pos[2], angle, len;
	float pivot[2];

	TrackStabilizationBase *trackRef = track->stabilizationBase;
	MovieTrackingMarker *marker = BKE_tracking_marker_get_exact(track, reference_frame);
	BLI_assert(marker); /* logic for initialization order ensures there *is* a marker on that very frame */

	if (!trackRef) {
		trackRef = track->stabilizationBase = MEM_callocN(sizeof(TrackStabilizationBase), "2D stabilization per track baseline data");
	}

	/* per track baseline value for translation */
	sub_v2_v2v2(trackRef->stabilization_offset_base, average_translation, marker->pos);

	/* per track baseline value for rotation */
	copy_v2_fl(pivot, 0.5f); /* use center of frame as hard wired pivot */
	add_v2_v2(pivot, average_translation);
	sub_v2_v2(pivot, target_pos);
	sub_v2_v2v2(pos, marker->pos, pivot);

	pos[0] *= aspect;
	angle = average_angle - atan2f(pos[1],pos[0]);
	rotate_m2(trackRef->stabilization_rotation_base, angle);

	/* per track baseline value for zoom */
	len = len_v2(pos) + SCALE_ERROR_LIMIT_BIAS;
	trackRef->stabilization_scale_base = expf(average_scale_step) / len;

	trackRef->is_init_for_stabilization = true;
}


static void initialize_all_tracks(MovieTracking *tracking, float aspect)
{
	size_t i, tracknr = 0;
	MovieTrackingTrack *track;
	TrackInitOrder *order;

	/* attempt to start initialization at anchor_frame.
	 * By definition, offset contribution is zero there */
	int reference_frame = tracking->stabilization.anchor_frame;
	float average_angle=0, average_scale_step=0;
	float average_translation[2];
	float target_pos_at_ref_frame[2];
	zero_v2(target_pos_at_ref_frame);
	zero_v2(average_translation);

	for (track = tracking->tracks.first; track; track = track->next) {
		TrackStabilizationBase *base = track->stabilizationBase;
		if (base) {
			base->is_init_for_stabilization = false;
		}
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
			average_track_contributions(tracking, reference_frame, aspect, average_translation, &average_angle, &average_scale_step);
			copy_v2_v2(target_pos_at_ref_frame, tracking->stabilization.target_pos); /* TODO this is not correct: we need to get the animated value for reference_frame */
		}
		initialize_track_for_stabilization(track, reference_frame, aspect, target_pos_at_ref_frame, average_translation, average_angle, average_scale_step);
	}

	cleanup:
	MEM_freeN(order);
	return;
}


/**
 * Retrieve the measurement of frame movement by averaging contributions of active tracks.
 * @param translation measurement in normalized 0..1 coordinates
 * @param angle measurement in radians -pi..+pi counter clockwise relative to translation compensated frame center
 * @param scale_step measurement of image scale changes, in logarithmic scale (zero means scale == 1)
 * @return calculation enabled and all data retrieved as expected for this frame.
 * @note when returning \c false, output params are reset to neutral values
 */
static bool stabilization_determine_offset_for_frame(MovieTracking *tracking, int framenr, float aspect,
                                                     float translation[2], float* angle, float* scale_step)
{
	MovieTrackingStabilization *stab = &tracking->stabilization;
	bool success = false;

	/* Early output if stabilization is disabled. */
	if ((stab->flag & TRACKING_2D_STABILIZATION) == 0) {
		zero_v2(translation);
		*scale_step = 0.0f;
		*angle = 0.0f;
		return false;
	}

	success = average_track_contributions(tracking, framenr, aspect, translation, angle, scale_step);
	if (!success) {
		/* try to hold extrapolated settings beyond the definition range
		 * and to interpolate in gaps without any usable tracking data
		 * to prevent sudden jump to image zero position
		 */
		int next_lower = MINAFRAME;
		int next_higher = MAXFRAME;
		find_next_working_frames(tracking, framenr, &next_lower, &next_higher);
		if (next_lower >= MINFRAME && next_higher < MAXFRAME) {
			success = interpolate_averaged_track_contributions(tracking, framenr, next_lower, next_higher, aspect,
			                                                   translation, angle, scale_step);
		}
		else if (next_higher < MAXFRAME) {
			/* before start of stabilized range: extrapolate start point settings */
			success = average_track_contributions(tracking, next_higher, aspect, translation, angle, scale_step);
		}
		else if (next_lower >= MINFRAME) {
			/* after end of stabilized range: extrapolate end point settings */
			success = average_track_contributions(tracking, next_lower, aspect, translation, angle, scale_step);
		}
	}
	return success;
}

/**
 * Calculate stabilization data (translation, scale and rotation) from given raw measurements.
 * Result is in absolute image dimensions (expanded image, square pixels), includes automatic
 * or manual scaling and compensates for a target frame position, if given.
 * @param size of the expanded image, the width in pixels is size * aspect
 * @param aspect ratio (width / height) of the effective canvas (square pixels)
 * @param do_compensate actually output values necessary to \e compensate the determined
 *                      frame movement. Otherwise, the effective target movement is returned
 */
static void stabilization_calculate_data(MovieTracking *tracking, int size, float aspect,
                                         bool do_compensate, float scale_step,
                                         float translation[2], float *scale, float *angle)
{
	MovieTrackingStabilization *stab = &tracking->stabilization;

	*scale = (stab->scale - 1.0f) * stab->scaleinf + 1.0f;

	if (stab->flag & TRACKING_STABILIZE_SCALE) {
		*scale *= expf(scale_step * stab->scaleinf); /* averaged in log scale */
	}

	mul_v2_fl(translation, stab->locinf);
	*angle *= stab->rotinf;

	/* compensate for a target frame position.
	 * This allows to follow tracking / panning shots in a semi manual fashion,
	 * when animating the settings for the target frame position
	 */
	sub_v2_v2(translation, stab->target_pos);
	*angle -= stab->target_rot;

	/* convert from relative to absolute coordinates, square pixels. */
	translation[0] *= (float)size * aspect;
	translation[1] *= (float)size;

	/* output measured data, or inverse of the measured values for compensation? */
	if (do_compensate) {
		mul_v2_fl(translation, -1.0f);
		*angle *= -1.0f;
		if (*scale != 0.0f) *scale = 1.0f / *scale;
	}
}


/**
 * Determine the inner part of the frame, which is always safe to use.
 * When enlarging the image by the inverse of this factor, any black areas
 * appearing due to frame translation and rotation will be removed.
 * @note when calling this function, basic initialization of tracks must be done already
 */
static void stabilization_determine_safe_image_area(MovieTracking *tracking, int size, float image_aspect)
{
	MovieTrackingStabilization *stab = &tracking->stabilization;
	float pixel_aspect = tracking->camera.pixel_aspect;

	int sfra = INT_MAX, efra = INT_MIN, cfra;
	float scale = 1.0f, scale_step = 0.0f;
	MovieTrackingTrack *track;

	/* Early output if stabilization is already initialized or not enabled. */
	if (stab->ok || !(stab->flag & TRACKING_2D_STABILIZATION)) {
		return;
	}

	stab->scale = 1.0f;

	/* Calculate maximal frame range of tracks where stabilization is active. */
	for (track = tracking->tracks.first; track; track = track->next) {
		if ((track->flag & TRACK_USE_2D_STAB) ||
			((stab->flag & TRACKING_STABILIZE_ROTATION) && (track->flag & TRACK_USE_2D_STAB_ROT)))
		{
			int first_frame = track->markers[0].framenr;
			int last_frame  = track->markers[track->markersnr - 1].framenr;
			sfra = min_ii(sfra, first_frame);
			efra = max_ii(efra, last_frame);
		}
	}

	/* For every frame we calculate scale factor needed to eliminate black border area
	 * and choose largest scale factor as final one.
	 */
	for (cfra = sfra; cfra <= efra; cfra++) {
		float translation[2], angle, tmp_scale;
		int i;
		float mat[4][4];
		float points[4][2] = {{0.0f, 0.0f}, {0.0f, size}, {image_aspect*size, size}, {image_aspect*size, 0.0f}};
		float si, co;
		bool do_compensate = true;

		stabilization_determine_offset_for_frame(tracking, cfra, image_aspect, translation, &angle, &scale_step);
		stabilization_calculate_data(tracking, size, image_aspect, do_compensate, scale_step,
				                     translation, &tmp_scale, &angle);

		BKE_tracking_stabilization_data_to_mat4(size*image_aspect, size, pixel_aspect, translation, 1.0f, angle, mat);

		si = sinf(angle);
		co = cosf(angle);

		/* investigate the transformed border lines for this frame;
		 * find out, where it cuts the original frame. */
		for (i = 0; i < 4; i++) {
			int j;
			float a[3] = {0.0f, 0.0f, 0.0f}, b[3] = {0.0f, 0.0f, 0.0f};

			copy_v2_v2(a, points[i]);
			copy_v2_v2(b, points[(i + 1) % 4]);
			a[2] = b[2] = 0.0f;

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
						w = (float)size / 2.0f;
						h = image_aspect*size / 2.0f;
					}
					else {
						w = image_aspect*size / 2.0f;
						h = (float)size / 2.0f;
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

					S = (dx * I + dy * J + K) / (-w * I - h * J);

					scale = min_ff(scale, S);
				}
			}
		}
	}

	stab->scale = scale;

	if (stab->maxscale > 0.0f)
		stab->scale = max_ff(stab->scale, 1.0f / stab->maxscale);
}




/* === public interface functions === */

/**
 * Get stabilization data (translation, scaling and angle) for a given frame.
 * Returned data describes the detected movement, but with any chosen scale factor
 * already applied and any target frame position already compensated. In case
 * stabilization fails or is disabled, neutral values are returned.
 * @param framenr frame number, relative to the clip (not relative to the scene timeline)
 * @param width effective width of the canvas (square pixels), used to scale the determined translation
 * @param translation (output) of the lateral shift, absolute canvas coordinates (square pixels)
 * @param scale (output) of the scaling to apply
 * @param angle (output) of the rotation angle, relative to the frame center
 */
void BKE_tracking_stabilization_data_get(MovieTracking *tracking, int framenr, int width, int height,
                                         float translation[2], float *scale, float *angle)
{
	MovieTrackingStabilization *stab = &tracking->stabilization;

	bool enabled = stab->flag & TRACKING_2D_STABILIZATION;
	bool initialized = stab->ok;
	bool do_compensate = true; /* might to become a parameter of a stabilization compositor node */
	float scale_step = 0.0f;
	float aspect = (float)width / height;
	int size = height;

	if (enabled && !initialized) {
		initialize_all_tracks(tracking, aspect);
		if (stab->flag & TRACKING_AUTOSCALE) {
			stabilization_determine_safe_image_area(tracking, size, aspect);
		}
		stab->ok = true;
	}

	if (enabled &&
		stabilization_determine_offset_for_frame(tracking, framenr, aspect, translation, angle, &scale_step)) {

		stabilization_calculate_data(tracking, size, aspect, do_compensate, scale_step, translation, scale, angle);
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
	float pixel_aspect = tracking->camera.pixel_aspect;
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
	BKE_tracking_stabilization_data_to_mat4(ibuf->x, ibuf->y, pixel_aspect, tloc, tscale, tangle, mat);

	/* The following code visits each nominal target grid position
	 * and picks interpolated data "backwards" from source.
	 * thus we need the inverse of the transformation to apply. */
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


/**
 * Build a 4x4 transformation matrix based on the given 2D stabilization data.
 * @param mat (result) 4x4 matrix in homogeneous coordinates, adapted to the
 *            final image buffer size and compensated for pixel aspect ratio,
 *            ready for direct OpenGL drawing.
 *
 * @todo the signature of this function should be changed. we actually don't need the
 *       dimensions of the image buffer. Instead we should consider to provide the
 *       pivot point of the rotation as a further stabilization data parameter.
 */
void BKE_tracking_stabilization_data_to_mat4(int buffer_width, int buffer_height, float pixel_aspect,
                                             float translation[2], float scale, float angle,
                                             float mat[4][4])
{
	float translation_mat[4][4], rotation_mat[4][4], scale_mat[4][4],
	      pivot_mat[4][4], inv_pivot_mat[4][4],
	      aspect_mat[4][4], inv_aspect_mat[4][4];
	float scale_vector[3] = {scale, scale, 1.0f};

	float pivot[2]; /* XXX this should be a parameter, it is part of the stabilization data */

	/* use the motion compensated image center as rotation center.
	 * This is not 100% correct, but reflects the way the rotation data was measured.
	 * Actually we'd need a way to find a good pivot, and use that both for averaging
	 * and for compensation */
	/* TODO pivot shouldn't be calculated here, rather received as parameter */
	pivot[0] = pixel_aspect * buffer_width / 2.0f - translation[0];
	pivot[1] = (float)buffer_height        / 2.0f - translation[1];

	unit_m4(translation_mat);
	unit_m4(rotation_mat);
	unit_m4(scale_mat);
	unit_m4(aspect_mat);
	unit_m4(pivot_mat);
	unit_m4(inv_pivot_mat);

	/* aspect ratio correction matrix */
	aspect_mat[0][0] /= pixel_aspect;
	invert_m4_m4(inv_aspect_mat, aspect_mat);

	add_v2_v2(pivot_mat[3],     pivot);
	sub_v2_v2(inv_pivot_mat[3], pivot);

	size_to_mat4(scale_mat, scale_vector);       /* scale matrix */
	add_v2_v2(translation_mat[3], translation);  /* translation matrix */
	rotate_m4(rotation_mat, 'Z', angle);         /* rotation matrix */

	/* compose transformation matrix */
	mul_m4_series(mat, aspect_mat, translation_mat,
	                   pivot_mat, scale_mat, rotation_mat, inv_pivot_mat,
	                   inv_aspect_mat);
}
