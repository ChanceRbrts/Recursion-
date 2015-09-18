//
//  Room1HazardBounce.m
//  Recursion?
//
//  Created by Chance Roberts on 9/11/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room1HazardBounce.h"
@implementation Room1HazardBounce
-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX:X y:Y];
    self.frame = 1;
    self.index = @"HazardBounce";
    self.enemy = @"All-Sides";
    self.atk = 999;
    self.facingRight = false;
    self.dX = -4;
    return self;
}
-(void) update{
    [super update];
    self.frame += 0.25;
    if (self.frame > 8){
        self.frame = 1;
    }
}

-(void) ai{
    if (self.dX == 0){
        if (self.facingRight){
            self.dX = -4;
            self.facingRight = false;
        }
        else{
            self.dX = 4;
            self.facingRight = true;
        }
    }
    if (self.onGround){
        self.dY = -8;
    }
}

-(NSArray *)drawWithViewX:(float)vX viewY:(float)vY{
    return(@[[NSString stringWithFormat: @"Room1Hazard%d",(int)self.frame],
             [NSNumber numberWithFloat: self.x-vX],[NSNumber numberWithFloat: self.y-vY],
             [NSNumber numberWithFloat: self.w], [NSNumber numberWithFloat: self.h],
             [NSNumber numberWithFloat: M_PI_4*self.x/32.0]]);
}

@end