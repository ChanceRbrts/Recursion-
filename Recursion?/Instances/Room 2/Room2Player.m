//
//  Room2Player.m
//  Recursion?
//
//  Created by Chance Roberts on 10/19/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room2Player.h"
@implementation Room2Player
-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX:X y:Y];
    self.index = @"Player";
    return self;
}
-(void)updateWithControlsHeld:(NSArray *)con controlsPressed:(NSArray *)conPressed{
    if ([con[LEFT] isEqual: @YES] && [con[RIGHT] isEqual: @NO]){
        self.dX = -4;
    }
    else if ([con[LEFT] isEqual: @NO] && [con[RIGHT] isEqual: @YES]){
        self.dX = 4;
    }
    else{
        self.dX = 0;
    }
    if ([con[UP] isEqual: @YES] && [con[DOWN] isEqual: @NO]){
        self.dY = -4;
    }
    else if ([con[RIGHT] isEqual: @YES] && [con[LEFT] isEqual: @NO]){
        self.dY = 4;
    }
    else{
        self.dY = 0;
    }
    if (self.dX != 0 || self.dY != 0){
        self.direction = (int)(acosf(self.dX/(sqrt(self.dX*self.dX + self.dY*self.dY)))*180/M_PI);
    }
}
@end