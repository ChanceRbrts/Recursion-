//
//  Room2.m
//  Recursion?
//
//  Created by Chance Roberts on 10/10/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room2.h"
@implementation Room2
-(id) init{
    NSArray *Room2AA = @[
                         @"SSSSSSSSSSSSSSSSSSSS",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"S00000000P000000000S",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"S000000000000000000S",
                         @"SSSSSSSSSSSSSSSSSSSS",
                         ];
    self.Room2 = @[@[Room2AA]];
    return self;
}
@end