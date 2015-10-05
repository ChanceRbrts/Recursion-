//
//  Room1.h
//  Recursion?
//
//  Created by Chance Roberts on 8/31/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#ifndef Recursion__Room1_h
#define Recursion__Room1_h
#include "Room1Player.h"
#include "Room1Hazard.h"
#include "Room1Enemy1.h"
#include "Room1Enemy2.h"
#include "Room1HazardBounce.h"
#include "Room1Checkpoint.h"
@interface Room1 : NSObject
/**@brief The layout of the room.*/
@property NSArray *Room1;
@end
#endif
