//
//  Room1Enemy1.m
//  Recursion?
//
//  Created by Chance Roberts on 9/9/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room1Enemy1.h"
@implementation Room1Enemy1
-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX:X y:Y];
    self.atk = 1;
    self.index = @"Enemy1";
    self.enemy = @"Platformer";
    self.facingRight = true;
    self.dX = 4;
    self.inPursuit = false;
    self.terminalVelocity = 12;
    return self;
}
-(void) aiWithPlayer: (Instance *)p{
    if (self.inPursuit){
        self.facingRight = p.x >= self.x;
        if (self.facingRight){
            self.dX += 0.25;
            if (self.dX > 6){
                self.dX = 6;
            }
        }
        else{
            self.dX -= 0.25;
            if (self.dX < -6){
                self.dX = -6;
            }
        }
        if (sqrtf((p.x-self.x)*(p.x-self.x)+(p.y-self.y)*(p.y-self.y)) > 320){
            self.inPursuit = false;
        }
        if (self.onGround && sqrtf((p.x-self.x)*(p.x-self.x)) < 128 && self.y-p.y > 48){
            self.dY = -3;
        }
    }
    else{
        if (self.facingRight){
            if (self.dX == 0){
                self.dX = -4;
                self.facingRight = false;
            }
            if (p.x > self.x && sqrtf((p.x-self.x)*(p.x-self.x)+(p.y-self.y)*(p.y-self.y)) <= 240){
                self.inPursuit = true;
            }
        }
        else{
            if (self.dX == 0){
                self.dX = 4;
                self.facingRight = true;
            }
            if (p.x < self.x && sqrtf((p.x-self.x)*(p.x-self.x)+(p.y-self.y)*(p.y-self.y)) <= 240){
                self.inPursuit = true;
            }
        }
    }
}
-(NSArray *)drawWithViewX:(float)vX viewY:(float)vY{
    return(@[@"SolidWallPlaceholder",
             [NSNumber numberWithFloat: self.x-vX],[NSNumber numberWithFloat: self.y-vY],
             [NSNumber numberWithFloat: self.w], [NSNumber numberWithFloat: self.h],
             [NSNumber numberWithFloat: 0]]);
    
}
@end