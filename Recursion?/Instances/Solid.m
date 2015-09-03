//
//  Solid.m
//  Recursion?
//
//  Created by Chance Roberts on 8/28/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Solid.h"
@implementation Solid
-(id)initWithX:(float)X y:(float)Y{
    self = [super initWithX: X y: Y];
    self.index = @"Solid";
    self.tileset = @"SolidWallPlaceholder";
    return self;
}
-(NSArray *)drawWithViewX:(float)vX viewY:(float)vY{
    return(@[self.tileset,
             [NSNumber numberWithFloat: self.x-vX],[NSNumber numberWithFloat: self.y-vY],
             [NSNumber numberWithFloat: self.w], [NSNumber numberWithFloat: self.h],
             [NSNumber numberWithFloat: 0]]);

}
@end