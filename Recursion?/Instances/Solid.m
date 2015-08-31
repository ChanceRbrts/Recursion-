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
    return self;
}
-(NSArray *) draw{ //This will, of course, eventually be different!
    return [[NSArray alloc] init];
}
@end