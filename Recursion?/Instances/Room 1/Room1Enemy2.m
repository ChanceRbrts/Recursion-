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
    self.loopMove = 0;
    return self;
}
-(void) aiWithPlayer:(Instance *)p{
    self.loopMove += M_PI/48.f;
    self.dX = 2*sin(self.loopMove/5.f);
    self.dY = -2*cos(self.loopMove);
    
}
-(NSArray *)drawWithViewX:(float)vX viewY:(float)vY{
    return(@[@"SolidWallPlaceholder",
             [NSNumber numberWithFloat: self.x-vX],[NSNumber numberWithFloat: self.y-vY],
             [NSNumber numberWithFloat: self.w], [NSNumber numberWithFloat: self.h],
             [NSNumber numberWithFloat: 0]]);
    
}
@end