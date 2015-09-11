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
    self.enemy = @"Platformer";
    return self;
}
@end