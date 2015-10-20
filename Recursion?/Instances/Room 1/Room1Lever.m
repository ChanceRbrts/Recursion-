//
//  Room1Lever.m
//  Recursion?
//
//  Created by Chance Roberts on 10/7/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#include "Room1Lever.h"
@implementation Room1Lever
-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX:X y:Y];
    self.obj = @[@"Gate_1",@"Gate_2"];
    self.justPulled = false;
    self.isLocked = false;
    self.timeFrame = 5*60;
    self.timeLeft = -1;
    self.countStart = 0;
    self.type = @"Transparent";
    self.index = @"Lever";
    return self;
}

-(void)aiWithPlayer:(Instance *)p{
    if (self.isLocked && self.timeLeft > 0){
        self.timeLeft = self.timeFrame-(CACurrentMediaTime()-self.countStart);
        if (self.timeLeft <= 0){
            self.justPulled = true;
            self.isLocked = false;
        }
    }
}

-(void)extraCollisionWithDegree:(int)dg instance:(Instance *)i{
    self.justPulled = true;
    self.isLocked = true;
    self.timeLeft = self.timeFrame;
    self.countStart = CACurrentMediaTime();
}

-(void)finishUpdate{
    self.justPulled = false;
}

-(NSArray *)drawWithViewX:(float)vX viewY:(float)vY{
    return(@[@"Replacement",
             [NSNumber numberWithFloat: self.x-vX],[NSNumber numberWithFloat: self.y-vY],
             [NSNumber numberWithFloat: self.w], [NSNumber numberWithFloat: self.h],
             [NSNumber numberWithFloat: 0]]);
    
}
@end