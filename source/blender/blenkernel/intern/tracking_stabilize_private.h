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
 *                 Ichthyostega
 *
 * ***** END GPL LICENSE BLOCK *****
 */

/** \file blender/blenkernel/intern/tracking_stabilize_private.h
 *  \ingroup bke
 *
 * This file contains declarations of functions and working data
 * used internally by the 2D stabilization. Since management of
 * tracks is scattered over multiple files, some operators need
 * access to these non public functions.
 */

#ifndef __TRACKING_STABILIZE_PRIVATE_H__
#define __TRACKING_STABILIZE_PRIVATE_H__

#include "BLI_ghash.h"

/* 2D stabilization private working data */
typedef struct MovieTrackingTrack MovieTrackingTrack;
typedef struct TrackStabilizationBase TrackStabilizationBase;
typedef struct MovieTrackingStabilization MovieTrackingStabilization;
typedef struct StabilizationAnimatedValues StabilizationAnimatedValues;

TrackStabilizationBase* accessStabilizationBaselineData(MovieTrackingTrack *track);
void linkStabilizationBaselineData(MovieTrackingTrack *track, TrackStabilizationBase* privateData);
bool discardStabilizationBaselineData(MovieTrackingTrack *track);
StabilizationAnimatedValues* accessStabilizationAnimatedValues(MovieTrackingStabilization *stab);
void linkStabilizationAnimatedValues(MovieTrackingStabilization *stab, StabilizationAnimatedValues* privateData);
bool discardStabilizationAnimatedValues(MovieTrackingStabilization *stab);



#endif  /* __TRACKING_STABILIZE_PRIVATE_H__ */
