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
    self.yLocked = self.y;
    self.yUnlocked = self.y-32*H;
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
-(void) aiWithPlayer:(Instance *)p{
    [super aiWithPlayer: p];
    if (self.y+self.dY <= 0){
        self.y = 0;
        self.dY = 0;
    }
    else if (self.unlocked && self.y > self.yUnlocked){
        self.dY = -4;
    }
    else if(!self.unlocked && self.y < self.yLocked){
        self.dY = 4;
    }
    else{
        self.dY = 0;
    }
}

@end