//
//  Room1.m
//  Recursion?
//
//  Created by Chance Roberts on 8/31/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Room1.h"
@implementation Room1
-(id) init{
    NSArray *Room1_AA = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S000000000P000000000",
                @"S0000000000000000000",
                @"SSSSSSSSSSSSSSSSSSSS",
                          ];
    NSArray *Room1_AB = @[
                 @"SSSSSSSSSSSSSSSSSSSS",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"0000000000000000SSSS",
                 @"0000000000000000SSSS",
                 @"00000000SSSS0000SSSS",
                 @"00000000SSSS0000SSSS",
                 @"SSSSSSSSSSSSSSSSSSSS",
                 
                 ];
    NSArray *Room1_AC = @[
                 @"SSSSSSSSSSSSSSSSSSSS",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00000000000000000000",
                 @"00SSSSS000000SSSS000",
                 @"SSSS0000000000000000",
                 @"SSSS0000000000000000",
                 @"SSSS0000000000000000",
                 @"SSSS0000000000000000",
                 @"SSSS0000000000000000",
                 @"SSSSHHHHHHHHHHHHHHHH",
                 @"SSSSSSSSSSSSSSSSSSSS",
                 ];
    NSArray *Room1_AD = @[
                 @"SSSSSSSSSSSSSSSSSSSS",
                 @"000000000000000000SS",
                 @"000000000000000000SS",
                 @"000000000000000000SS",
                 @"000000000000000000SS",
                 @"000000000000000000SS",
                 @"000000000000000000SS",
                 @"000000000000000000SS",
                 @"000000000000000000SS",
                 @"00000000000000000000",
                 @"0000000SSSSSS0000000",
                 @"0000000SSSSSS0000000",
                 @"0000000SSSSSS00000S0",
                 @"HHHHHHHHHHHHHHHHHHSS",
                 @"SSSSSSSSSSSSSSSSSSSS",
                 ];
    NSArray *Room1_AE = @[
                 @"SSSSSSSSSSSSSSSSSSSS",
                 @"SSSSSSS0000000000000",
                 @"SSSSSSS0000000000000",
                 @"SSSSSSS0000000000000",
                 @"SSSSSSS00000SSSSSSSS",
                 @"SSSSSSS00000SSSSSSSS",
                 @"SSSSSSS00000SSSSSSSS",
                 @"SSSSSSS00000SSSSSSSS",
                 @"SSSSSSS00000SSSSSSSS",
                 @"SSSSSSS00000SSSSSSSS",
                 @"0SSSSSS00000SSSSSSSS",
                 @"000000000000SSSSSSSS",
                 @"000000000000SSSSSSSS",
                 @"000000000000SSSSSSSS",
                 @"SSSSSSSSSSSSSSSSSSSS",
                 
                 ];
    NSArray *Room1_AF = @[
                 @"SSSSSSSSSSSSSSSSSSSS",
                 @"0000000000S000000000",
                 @"0000000000S000000000",
                 @"0000000000S000000000",
                 @"SSSSSS0000S000000000",
                 @"SSSSSS0000S000000000",
                 @"SSSSSS0000S000000000",
                 @"SSSSSS00000000000000",
                 @"SSSSSS00000000000000",
                 @"SSSSSS00000000000000",
                 @"SSSSSS0000000SSSSSSS",
                 @"SSSSSS0000000SSSSSSS",
                 @"SSSSSS0000000SSSSSSS",
                 @"SSSSSSHHHHHHHSSSSSSS",
                 @"SSSSSSSSSSSSSSSSSSSS",
                 ];
    /**@brief The layout of the room.*/
    self.Room1 = @[@[Room1_AA,Room1_AB,Room1_AC,Room1_AD,Room1_AE,Room1_AF]];
    return self;
}
@end