//
//  Room1Player.m
//  Recursion?
//
//  Created by Chance Roberts on 8/28/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room1Player.h"
@implementation Room1Player

-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX: X y: Y];
    self.index = @"Player";
    self.h = 64;
    return self;
}

-(void)updateWithControlsHeld: (NSArray *)con controlsPressed: (NSArray*)conPressed{
    [super update];
    //Moving Left
    //NSLog([NSString stringWithFormat: @"%@,%@", con[LEFT], con[RIGHT]]);
    if ([con[LEFT]  isEqual: @YES] && [con[RIGHT] isEqual: @NO]){
        self.dX -= 0.25;
        if ((self.dX < -4 && !con[B]) || (self.dX < -8 && con[B])){
            self.dX += 0.25;
        }
    }
    //Moving Right
    else if ([con[RIGHT] isEqual: @YES] && [con[LEFT] isEqual: @NO]){
        self.dX += 0.25;
        if ((self.dX > 4 && !con[B]) || (self.dX  > 8 && con[B])){
            self.dX -= 0.25;
        }
    }
    //Stopping
    else{
        if (self.dX > 0.5){
            self.dX -= 0.5;
        }
        else if (self.dX < -0.5){
            self.dX += 0.5;
        }
        else{
            self.dX = 0;
        }
    }
    //Jumping
    if ([conPressed[A] isEqual: @YES] && self.onGround){
        if (self.dX > 0){
            self.dY = -4-self.dX/2;
        }
        else{
            self.dY = -4+self.dX/2;
        }
    }
    //Walljumping
    else if ([conPressed[A] isEqual: @YES]){
        if (self.againstLeftWall && con[LEFT]){
            if ([con[UP] isEqual: @YES] && [con[DOWN] isEqual: @NO]){
                self.dY = -8;
                self.dX = 2;
            }
            else if ([con[DOWN] isEqual: @YES] && [con[UP] isEqual: @NO]){
                self.dY = 2;
                self.dX = 2;
            }
            else if ([con[RIGHT] isEqual: @YES]){
                self.dY = 0;
                self.dX = 10;
            }
            else{
                self.dY = -4;
                self.dX = 4;
            }
        }
        else if (self.againstRightWall && [con[RIGHT] isEqual: @YES]){
            if (con[UP] && !con[DOWN]){
                self.dY = -8;
                self.dX = -2;
            }
            else if ([con[DOWN] isEqual: @YES] && [con[UP] isEqual: @NO]){
                self.dY = 2;
                self.dX = -2;
            }
            else if ([con[RIGHT] isEqual: @YES]){
                self.dY = 0;
                self.dX = -10;
            }
            else{
                self.dY = -4;
                self.dX = -4;
            }
        }
    }
    //Terminal Velocity changes as you are sliding down the wall.
    if ((self.againstLeftWall && con[LEFT]) || (self.againstRightWall && con[RIGHT])){
        self.terminalVelocity = 4;
    }
    else{
        self.terminalVelocity = 16;
    }
}

-(void)finishUpdate{
    [super finishUpdate];
    self.againstLeftWall = false;
    self.againstRightWall = false;
}

-(void) extraCollisionWithDegree:(int)dg{
    [super extraCollisionWithDegree:dg];
    if (dg == 0){
        self.againstRightWall = true;
    }
    else if (dg == 180){
        self.againstLeftWall = true;
    }
}

-(NSArray *)drawWithViewX:(float)vX viewY:(float)vY{
    return(@[@"SolidWallPlaceholder",
             [NSNumber numberWithFloat: self.x-vX],[NSNumber numberWithFloat: self.y-vY],
             [NSNumber numberWithFloat: self.w], [NSNumber numberWithFloat: self.h],
             [NSNumber numberWithFloat: 0]]);
    
}
@end