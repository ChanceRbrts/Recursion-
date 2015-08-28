//
//  Room1Player.h
//  Recursion?
//
//  Created by Chance Roberts on 8/28/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#ifndef Recursion__Room1Player_h
#define Recursion__Room1Player_h
#include "PlatformerInstance.h"
#include "ControlEnum.h"
@interface Room1Player : PlatformerInstance
-(void)updateWithControlsHeld: (NSArray *)con controlsPressed: (NSArray*)conPressed;
@end
#endif
