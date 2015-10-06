//
//  Room1Gate.m
//  Recursion?
//
//  Created by Chance Roberts on 10/6/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room1Gate.h"
@implementation Room1Gate
-(id) initWithX:(float)X y:(float)Y gateHeight:(int)H unlocked:(bool)Unlocked index:(NSString*)Index{
    self = [super initWithX:X y: Y];
    self.yLocked = Y;
    self.yUnlocked = Y-32*H;
    self.unlocked = Unlocked;
    self.index = Index;
    if (Unlocked){
        self.y = self.yUnlocked;
    }
    else{
        self.y = self.yLocked;
    }
    return self;
}
-(void) updateWithPlayer:(Instance *)p{
    [super updateWithPlayer:p];
    if (self.unlocked && self.y < self.yUnlocked){
        self.dY = 4;
    }
    else if(!self.unlocked && self.y > self.yLocked){
        self.dY = -4;
    }
    else{
        self.dY = 0;
    }
}

@end