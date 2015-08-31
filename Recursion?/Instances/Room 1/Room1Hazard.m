//
//  Room1Hazard.m
//  Recursion?
//
//  Created by Chance Roberts on 8/31/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room1Hazard.h"
@implementation Room1Hazard
-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX:X y:Y];
    self.frame = 0;
    self.index = @"Hazard";
    self.enemy = @"All-Sides";
    return self;
}

-(NSArray *)draw{
    self.frame += 1;
    if (self.frame > 8){
        self.frame = 1;
    }
    return(@[]);
}

@end