//
//  objManager.m
//  Recursion?
//
//  Created by Chance Roberts on 8/26/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "objManager.h"
@implementation objManager
-(id) init{
    self = [super init];
    Room1 *r1 = [[Room1 alloc] init];
    self.room1Objects = [self buildRoom: r1.Room1];
    r1 = nil;
    self.viewX = -9999;
    self.viewY = -9999;
    self.room = 1;
    self.maxRoomReset = 240;
    self.roomReset = 0;
    return self;
}

-(void)changeViewXandYWithInstance: (Instance *)i{
    self.viewX = i.x-313;
    if (self.viewX < 0){
        self.viewX = 0;
    }
    self.viewY = i.y-313;
    if (self.viewY < 0){
        self.viewY = 0;
    }
    if (self.viewY > 640*self.room1Objects.count-633){
        self.viewY = 640*self.room1Objects.count-633;
    }
}

-(void) updateWithControlsHeld: (NSArray *)con controlsPressed: (NSArray*)conPressed{
    if (self.room == 1){
        if (self.viewX == -9999 && self.viewY == -9999){
            [self changeViewXandYWithInstance: self.player1];
        }
    }
    [self updateLayer1WithControlsHeld:con controlsPressed:conPressed];
    if (self.room == 1){
        [self changeViewXandYWithInstance: self.player1];
    }
    if (self.roomReset == self.maxRoomReset){
        self.room1Objects = [self buildRoom: [[Room1 alloc]init].Room1];
    }
}

-(void) updateLayer1WithControlsHeld:(NSArray *)con controlsPressed:(NSArray *)conPressed{
    self.mainCol = self.player1.x/640;
    self.mainRow = self.player1.y/480;
    if (self.room == 1){
        [self.player1 updateWithControlsHeld:con controlsPressed:conPressed];
    }
    NSMutableArray *r1Objects = [[NSMutableArray alloc] init];
    for (int r = self.mainRow-1; r <= self.mainRow+1; r++){
        if (r >= 0 && r < self.room1Objects.count){
            for (int c = self.mainCol-1; c <= self.mainCol+1; c++){
                if (c >= 0 && c < ((NSArray *)(self.room1Objects[r])).count){
                    for (int i = 0; i < ((NSArray *)((NSArray *)self.room1Objects[r])[c]).count; i++){
                        //By far the most casting I think I've ever done...
                        Instance *current = (Instance *)(((NSArray *)((NSArray *)self.room1Objects[r])[c])[i]);
                        if (current.x >= (c+1)*640 || current.x < c*640 || current.y >= (r+1)*480 || current.y < r*480){
                            [((NSArray *)self.room1Objects[r])[c] removeObjectAtIndex: i];
                            [((NSArray *)self.room1Objects[(int)current.y/480])[(int)current.x/640] insertObject: current atIndex:0];
                            i -= 1;
                        }
                        else if (current.hp == 0){
                            [((NSArray *)self.room1Objects[r])[c] removeObjectAtIndex: i];
                            i -= 1;
                        }
                        if (current.x >= (self.mainCol-1)*640 && current.x < (self.mainCol+2)*640 && current.y >= (self.mainRow-1)*480 && current.y < (self.mainRow+2)*480){
                            [current updateWithPlayer: self.player1];
                            [r1Objects addObject: current];
                        }
                    }
                }
            }
        }
    }
    //Collision
    for (int i = 0; i < r1Objects.count; i++){
       [self.player1 collisionWithInstance: ((Instance *)(r1Objects[i]))];
    }
    for (int i = 0; i < r1Objects.count; i++){
        if (![((Instance *)([r1Objects objectAtIndex: i])).index isEqualToString: @"Solid"]){
            for (int j = 0; j < r1Objects.count; j++){
                if (i != j){
                    [((Instance *)([r1Objects objectAtIndex: i])) collisionWithInstance: ((Instance *)([r1Objects objectAtIndex: j]))];
                }
            }
        }
    }
    //Finish Updates
    [self.player1 finishUpdate];
    for (int i = 0; i < r1Objects.count; i++){
        [(Instance*)(r1Objects[i]) finishUpdate];
    }
    if (self.player1.hp <= 0){
        self.roomReset += 1;
    }
    else{
        self.roomReset = 0;
    }
}

-(NSArray *)draw{
    NSMutableArray *instru = [[NSMutableArray alloc] init];
    NSArray *obj;
    if (self.room == 1){
        obj = self.room1Objects;
        self.mainCol = self.player1.x/640;
        self.mainRow = self.player1.y/480;
        [instru addObject: [self.player1 drawWithViewX:self.viewX viewY:self.viewY]];
    }
    NSMutableArray *drObjects = [[NSMutableArray alloc] init];
    for (int r = self.mainRow-1; r <= self.mainRow+1; r++){
        if (r >= 0 && r < obj.count){
            for (int c = self.mainCol-1; c <= self.mainCol+1; c++){
                if (c >= 0 && c < ((NSArray *)(obj[r])).count){
                    for (int i = 0; i < ((NSArray *)((NSArray *)obj[r])[c]).count; i++){
                        [drObjects addObject: (Instance *)(((NSArray *)((NSArray *)obj[r])[c])[i])];
                    }
                }
            }
        }
    }
    for (int i = 0; i < drObjects.count; i++){
        Instance *j = (Instance *)(drObjects[i]);
        if (j.x+j.w >= self.viewX && j.x <= self.viewX+640 && j.y+j.h >= self.viewY && j.y <= self.viewY+480){
            [instru addObject: [j drawWithViewX: self.viewX viewY: self.viewY]];
        }
    }
    return((NSArray *)instru);
}

-(NSArray *)buildRoom: (NSArray *)room{
    NSMutableArray *a = [[NSMutableArray alloc] init];
    for (int i = 0; i < room.count; i++) {
        NSArray *roomRow = (NSArray *)room[i];
        NSMutableArray *rowOfObjects = [[NSMutableArray alloc] init];
        for (int j = 0; j < roomRow.count; j++){
            NSMutableArray *objects = [[NSMutableArray alloc] init];
            NSArray *roomCol = (NSArray *)roomRow[j];
            for (int y = 0; y < roomCol.count; y++){
                NSString *row = (NSString *)roomCol[y];
                for (int x = 0; x < row.length; x++){
                    //There HAS to be another way to do get one character... :|
                    if ([[[row substringFromIndex:x] substringToIndex: 1] isEqualToString: @"S"]){
                        Solid *s = [[Solid alloc] initWithX: j*20+x y:i*15+y];
                        [objects addObject: s];
                    }
                    else if([[[row substringFromIndex:x] substringToIndex: 1] isEqualToString: @"H"]){
                        Room1Hazard *h = [[Room1Hazard alloc] initWithX: j*20+x y:i*15+y];
                        [objects addObject: h];
                    }
                    else if ([[[row substringFromIndex:x] substringToIndex: 1] isEqualToString: @"P"]){
                        self.player1 = [[Room1Player alloc] initWithX: j*20+x y:i*15+y];
                    }
                    else if ([[[row substringFromIndex:x] substringToIndex: 1] isEqualToString: @"1"]){
                        [objects addObject: [[Room1Enemy1 alloc] initWithX: j*20+x y:i*15+y]];
                    }
                    else if ([[[row substringFromIndex:x] substringToIndex: 1] isEqualToString: @"!"]){
                        [objects addObject: [[Room1HazardBounce alloc] initWithX: j*20+x y:i*15+y]];
                    }
                    else if ([[[row substringFromIndex:x] substringToIndex: 1] isEqualToString: @"2"]){
                        [objects addObject: [[Room1Enemy2 alloc] initWithX: j*20+x y:i*15+y]];
                    }
                }
            }
            [rowOfObjects addObject: objects];
        }
        [a addObject: rowOfObjects];
    }
    return (NSArray *)a;
}
@end