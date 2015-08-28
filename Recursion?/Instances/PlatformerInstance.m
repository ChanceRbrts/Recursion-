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
-(void) update{
    [super update];
    [self gravity];
}
-(void) gravity{
    self.dY += 0.25;
    if (self.dY > self.terminalVelocity){
        self.dY = self.terminalVelocity;
    }
}
@end