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
    self.terminalVelocity = 16;
    self.onGround = false;
    self.prevOnGround = false;
    return self;
}

-(void) updateWithPlayer: (Instance *)p{
    [super updateWithPlayer: p];
    [self gravity];
}

-(void) finishUpdate{
    [super finishUpdate];
    if (self.onGround){
        if (self.prevOnGround){
            self.onGround = false;
            self.prevOnGround = false;
        }
        else{
            self.prevOnGround = true;
        }
    }
}

-(void) gravity{
    self.dY += 0.25;
    if (self.dY > self.terminalVelocity){
        self.dY = self.terminalVelocity;
    }
}

-(void) extraCollisionWithDegree:(int)dg instance: (Instance *)i{
    [super extraCollisionWithDegree:dg instance: i]; //Just in case I do want to add something...
    if (dg == 270){
        self.onGround = true;
    }
}
@end