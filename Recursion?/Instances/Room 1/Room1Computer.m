//
//  Room1Computer.m
//  Recursion?
//
//  Created by Chance Roberts on 10/7/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room1Computer.h"
@implementation Room1Computer
-(id) initWithX:(float)X y:(float)Y{
    self = [super initWithX:X y:Y];
    self.index = @"Computer";
    self.type = @"Transparent";
    self.playerCol = false;
    self.h = 64;
    self.comOn = false;
    return self;
}

-(int) updateWithPlayer:(Instance *)p room: (int)Room controlsPressed: (NSArray *)conPressed{
    [p collisionWithInstance: self];
    if (self.playerCol && Room == 1 && [conPressed[START] isEqual: @YES] && self.comOn){
            return 2;
    }
    if (Room == 2 && [conPressed[SELECT] isEqual: @YES]){
        return 1;
    }
    return Room;
}

-(void) finishUpdate{
    self.playerCol = false;
}

-(void) extraCollisionWithDegree:(int)dg instance:(Instance *)i{
    if ([i.index isEqualToString: @"Player"]){
        self.playerCol = true;
    }
}

-(NSArray *)drawWithViewX:(float)vX viewY:(float)vY{
    return(@[@"SolidWallPlaceholder",
             [NSNumber numberWithFloat: self.x-vX],[NSNumber numberWithFloat: self.y-vY],
             [NSNumber numberWithFloat: self.w], [NSNumber numberWithFloat: self.h],
             [NSNumber numberWithFloat: 0]]);
    
}

@end