//
//  Room1Enemy2.m
//  Recursion?
//
//  Created by Chance Roberts on 9/22/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room1Enemy2.h"
@implementation Room1Enemy2
-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX:X y:Y];
    self.atk = 1;
    self.index = @"Enemy2";
    self.enemy = @"Platformer";
    return self;
}
@end