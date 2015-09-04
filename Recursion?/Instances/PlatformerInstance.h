//
//  PlatformerInstance.h
//  Recursion?
//
//  Created by Chance Roberts on 8/27/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#ifndef Recursion__PlatformerInstance_h
#define Recursion__PlatformerInstance_h
#include "Instance.h"
/**@brief An instance that has platformer elements (Gravity)*/
@interface PlatformerInstance : Instance
/**@brief How fast the object can fall.*/
@property float terminalVelocity;
/**@brief Is the object on the ground?*/
@property bool onGround,prevOnGround;
/**@brief Increase the dY as if gravity has applied.*/
-(void) gravity;
@end

#endif
