//
//  Room1HazardBounce.h
//  Recursion?
//
//  Created by Chance Roberts on 9/11/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#ifndef Recursion__Room1HazardBounce_h
#define Recursion__Room1HazardBounce_h
#include "PlatformerInstance.h"
@interface Room1HazardBounce : PlatformerInstance
/**@brief The frame of animation.*/
@property float frame;
/**@brief Is the hazard current going right?*/
@property bool facingRight;
@end
#endif
