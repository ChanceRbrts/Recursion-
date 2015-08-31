//
//  Instance.m
//  Recursion?
//
//  Created by Chance Roberts on 8/26/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Instance.h"
@implementation Instance
-(id)initWithX:(float)X y:(float)Y{
    self = [super init];
    self.x = X*32;
    self.y = Y*32;
    self.w = 32;
    self.h = 32;
    self.maxHP = 1;
    self.hp = self.maxHP;
    self.dX = 0;
    self.dY = 0;
    self.type = @"Solid";
    self.index = @"Instance"; //This needs to be changed.
    self.enemy = @"Not"; 
    return self;
}

-(void) extraCollisionWithDegree:(int)dg{
    
}

-(Instance *) collisionWithInstance:(Instance *)i{
    if ([self.type isEqualToString: @"Solid"]){
        if ([i.type isEqualToString: @"Solid"]){
            if (self.x+self.dX+self.w > i.x+i.dX && self.x+self.w <= i.x+i.dX && self.y+self.dY+self.h >= i.y+i.dY && self.y+self.dY <= i.y+i.h+i.dY){ //Collides on the right side.
                self.x = i.x+i.dX/2+self.dX/2-self.w;
                self.dX = 0;
                i.dX = 0;
                [self extraCollisionWithDegree:0];
            }
            if (self.x+self.dX < i.x+i.dX+i.w && self.x >= i.x+i.w+i.dX && self.y+self.dY+self.h >= i.y+i.dY && self.y+self.dY <= i.y+i.h+i.dY){ //Collides on the left side.
                self.x = i.x+i.dX/2+self.dX/2+i.w;
                self.dX = 0;
                i.dX = 0;
                [self extraCollisionWithDegree:180];
            }
            if (self.y+self.dY+self.h > i.y+i.dY && self.y+self.h <= i.y+i.dY && self.x+self.dX+self.w >= i.x+i.dX && self.x+self.dX <= i.x+i.w+i.dX){ //Collides on the bottom side.
                self.y = i.y+i.dY/2+self.dY/2-self.h;
                self.dY = 0;
                i.dY = 0;
                [self extraCollisionWithDegree:270];
            }
            if (self.y+self.dY < i.y+i.dY+i.h && self.y >= i.y+i.h+i.dY && self.x+self.dX+self.w >= i.x+i.dX && self.x+self.dX <= i.x+i.w+i.dX){ //Collides on the top side.
                self.x = i.x+i.dX/2+self.dX/2+i.w;
                self.dX = 0;
                i.dX = 0;
                [self extraCollisionWithDegree:90];
            }
        }
    }
    return i;
}
-(void) update{
    [self ai];
}

-(void) finishUpdate{
    self.x += self.dX;
    self.y += self.dY;
}

-(void) ai{
    
}

-(NSMutableArray *) draw{
    return [[NSMutableArray alloc] init];
}
@end