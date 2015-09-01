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
-(void) update{
    [super update];
    self.frame += 1;
    if (self.frame > 8){
        self.frame = 1;
    }
}

-(NSArray *)drawWithViewX:(float)vX viewY:(float)vY{
    //YAAAAAAAAAAAAAAAAAAY NSArray...... :|
    return(@[[NSString stringWithFormat: @"Room1Hazard%d",self.frame],
             [NSNumber numberWithFloat: self.x-vX],[NSNumber numberWithFloat: self.y-vY],
             [NSNumber numberWithFloat: self.w], [NSNumber numberWithFloat: self.h],
             [NSNumber numberWithFloat: 0]]);
}

@end