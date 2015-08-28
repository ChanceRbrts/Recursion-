//
//  PlatformerInstance.m
//  Recursion?
//
//  Created by Chance Roberts on 8/27/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "PlatformerInstance.h"
@implementation PlatformerInstance
-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX:X y:Y];
    self.onGround = false;
    return self;
}

-(void) update{
    [super update];
    [self gravity];
}

-(void) finishUpdate{
    [super finishUpdate];
    self.onGround = false;
}

-(void) gravity{
    self.dY += 0.25;
    if (self.dY > self.terminalVelocity){
        self.dY = self.terminalVelocity;
    }
}

-(void) extraCollisionWithDegree:(int)dg{
    [super extraCollisionWithDegree:dg]; //Just in case I do want to add something...
    if (dg == 270){
        self.onGround = true;
    }
}
@end