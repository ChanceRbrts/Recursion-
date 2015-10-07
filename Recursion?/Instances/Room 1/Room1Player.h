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
/**@brief The player character in Layer 1*/
@interface Room1Player : PlatformerInstance
/**@brief The previous dY*/
@property float prevDY;
/**@brief The previous y*/
@property float prevY;
/**@brief Is the player against a wall on the right?*/
@property bool againstRightWall;
/**@brief Is the player against a wall on the left?*/
@property bool againstLeftWall;
/**@brief Last HP*/
@property int lastHP;
/**@brief Invincibility Buffer*/
@property int buffer;
/**@brief MAX Invincibility Buffer*/
@property int maxBuffer;
/**@brief Is the player facing right?*/
@property bool facingRight;
/**@brief Is the player pressing the jump button?*/
@property bool pressingJump;
/**@brief Is the player ducking?*/
@property bool duck;
/**@brief Is the player trying to unduck?*/
@property bool unduck;
/**@brief The AJ Counter.*/
@property NSMutableArray *AJCounter;
/**@brief The AJ Int.*/
@property int aj;
/**@brief An update function that requires keyboard commands.
 @param con The controls that are being held.
 @param conPressed The controls that are being pressed.*/
-(void)updateWithControlsHeld: (NSArray *)con controlsPressed: (NSArray*)conPressed;
/**@brief AJ. Enough said.*/
-(void)AJ;
@end
#endif
