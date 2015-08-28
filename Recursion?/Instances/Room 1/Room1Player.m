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
    if (con[LEFT] && !con[RIGHT]){
        self.dX -= 0.25;
        if ((self.dX < -4 && !con[B]) || (self.dX < -8 && con[B])){
            self.dX += 0.25;
        }
    }
    else if (con[RIGHT] && !con[LEFT]){
        self.dX += 0.25;
        if ((self.dX > 4 && !con[B]) || (self.dX  > 8 && con[B])){
            self.dX -= 0.25;
        }
    }
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
    if (conPressed[A] && self.onGround){
        if (self.dX > 0){
            self.dY = -4-self.dX/2;
        }
        else{
            self.dY = -4+self.dX/2;
        }
    }
}
@end