//
//  Room1Checkpoint.m
//  Recursion?
//
//  Created by Chance Roberts on 9/30/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room1Checkpoint.h"
@implementation Room1Checkpoint
-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX:X y:Y];
    self.triggered = false;
    self.index = @"Checkpoint";
    self.type = @"Transparent";
    return self;
}

-(void) extraCollisionWithDegree:(int)dg instance:(Instance *)i{
    if (dg == -1){
        self.triggered = true;
    }
}

@end