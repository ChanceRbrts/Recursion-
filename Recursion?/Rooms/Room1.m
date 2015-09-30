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
                @"S00000000P0000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
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
                 @"SSSSSS00000000000000",
                 @"SSSSSS00000000000000",
                 @"SSSSSS00000000000000",
                 @"SSSSSS00000000000000",
                 @"SSSSSS0000000SSSSSSS",
                 @"SSSSSS0000000SSSSSSS",
                 @"SSSSSS0000000SSSSSSS",
                 @"SSSSSSHHHHHHHSSSSSSS",
                 @"SSSSSSSSSSSSSSSSSSSS",
                 ];
    NSArray *Room1_AG = @[
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
                @"SSSSS000000000000000",
                @"SSSSS000000000000000",
                @"SSSSS00000000000000S",
                @"SSSSS00000000100000S",
                @"SSSSSSSSSSSSSSSSSSSS",
                 ];
    NSArray *Room1_AH = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"000S0000000000000000",
                @"00SS0000000000000000",
                @"0SSS0000000000000000",
                @"SSSS0000000000000000",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_AI = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000SSSSSS",
                @"000000000000000SSSSS",
                @"000000000000000SSSSS",
                @"000000000000000SSSSS",
                @"000000000000000SSSSS",
                @"000000000000000SSSSS",
                @"000000000000000SSSSS",
                @"010000000010000SSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_AJ = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"0000000000000000000S",
                @"0000000000000000000S",
                @"0000000000000000000S",
                @"SSSSSSSSS0000000000S",
                @"SSSSSSSSSS000000000S",
                @"SSSSSSSSSSS00000000S",
                @"SSSSSSSSSSS00000000S",
                @"SSSSSSSSSSSS0000000S",
                @"SSSSSSSSSSSS0000000S",
                @"SSSSSSSSSSSS0000000S",
                @"SSSSSSSSSSSS0000000S",
                @"SSSSSSSSSSSS0000000S",
                @"SSSSSSSSSSSSS000000S",
                @"SSSSSSSSSSSSS000000S",
                ];
    NSArray *Room1_BJ = @[
                @"SSSSSSSSSSSSS000000S",
                @"SSSSSSSSSSSSS000000S",
                @"SSSSSSSSSSSSS000000S",
                @"SSSSSSSSSSSSS000000S",
                @"SSSSSSSSSSSSSS00000S",
                @"SSSSSSSSSSSSSS00000S",
                @"SSSSSSSSSSSSSS00000S",
                @"0000000SSSSSSS00000S",
                @"0000000000000000000S",
                @"0000000000000000000S",
                @"0000000000000000000S",
                @"000000000000000000SS",
                @"00000000000000000SSS",
                @"00000000000100000SSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_BI = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000000000000SSSSSS",
                @"0000000000000000SSSS",
                @"000000000000000000SS",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"0S000000000000000000",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_BH = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SS000000000000000000",
                @"SS000000000000000000",
                @"SS!00000000000000000",
                @"SS000000000000000000",
                @"SS000000000000000000",
                @"SS000000000SS0000000",
                @"00000000000SS0000000",
                @"00000000000SS0000SS0",
                @"00000000000SS0000SS0",
                @"00000000000SSHHHHSS0",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_BG = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000000000SSSSSSSSS",
                @"00000000000SSSSSSSSS",
                @"00000000000SSSSSSSSS",
                @"00000000000SSSSSSSSS",
                @"S0000000000SSSSSSSSS",
                @"S0000000000SSSSSSSSS",
                @"S0000000000SSSSSSSSS",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"S0000000000000000000",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_BF = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000000000000000000",
                @"00000000!00000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"0000000000000000000S",
                @"0000000000000000000S",
                @"SS00000000000000000S",
                @"SS00000000000000000S",
                @"SS00000000000000000S",
                @"SS00000000000000000S",
                @"SS00000000010000000S",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_BE = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"SSSS0000000000000000",
                @"SSSS0000000000000000",
                @"SSSS0000020000000000",
                @"SSSS0000000000000000",
                @"SSSS0000000000000000",
                @"SSSS0000000000000000",
                @"SSSS0000000000000000",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_BD = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000200000000000",
                @"00000SS0000000000000",
                @"00000SS0000000000000",
                @"00000SS0000000000000",
                @"00000SS0000000000000",
                @"00000SSHHHHHHHHHHHHH",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_BC = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000HSH00000000SS00",
                @"00000HHH00000000SS00",
                @"0000000000000000SS00",
                @"S000000000000000SS00",
                @"S000000000000000SS00",
                @"S000000000000000SS00",
                @"S00000000000SS00SS00",
                @"S00200000000SS00SS00",
                @"S00000000000SS00SS00",
                @"S00000000000SS000000",
                @"SHHHHHHHHHHHSS001000",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_BB = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000SSS",
                @"00000000000000000SSS",
                @"00000000000000000SSS",
                @"00000000000000000SSS",
                @"00000000000000000SSS",
                @"00000000000000000SSS",
                @"00000000000000000SSS",
                @"01000000000100000SSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_BA = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSS0000000000000",
                @"SSSSSSS0000000000000",
                @"SSSSSSS0000000000000",
                @"SSSSSSS0000000000000",
                @"SSSSSSS0000000000000",
                @"SSSSSSS0000200000000",
                @"SSSSSSS0000000000000",
                @"SSSSSSS0000000000000",
                @"SSSSSSS0000000000000",
                @"S0000000000000000202",
                @"S000000000000S000000",
                @"S000000SSSSSSSSSSSSS",
                ];
    NSArray *Room1_CA = @[
                @"S000000SSSSSSSSSSSSS",
                @"S000000SSSSSSSSSSSSS",
                @"S000000SSSSSSSSSSSSS",
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
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_CB = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000000",
                @"00000000000000000SS0",
                @"00020000000000000SS0",
                @"00200000000000000SS0",
                @"02000000000000000SS0",
                @"001000100010000!0SS0",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_CC = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
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
                @"00000000000000000000",
                @"00000000000000000000",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    NSArray *Room1_CD = @[
                ];
    NSArray *Room1_CE = @[
                ];
    NSArray *Room1_CF = @[
                ];
    NSArray *Room1_CG = @[
                ];
    NSArray *Room1_CH = @[
                ];
    NSArray *Room1_CI = @[
                ];
    NSArray *Room1_CJ = @[
                ];
    NSArray *Room1_CK = @[
                ];
    NSArray *Room1_BK = @[
                ];
    NSArray *Room1_BL = @[
                ];
    NSArray *Room1_AL = @[
                ];
    NSArray *Room1_AM = @[
                ];
    NSArray *Room1_AN = @[ //The room you lock yourself in.
                ];
    NSArray *Room1_FL = @[
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                @"SSSSSSSSSSSSSSSSSSSS",
                ];
    /**@brief The layout of the room.*/
    self.Room1 = @[@[Room1_AA,Room1_AB,Room1_AC,Room1_AD,Room1_AE,Room1_AF,Room1_AG,Room1_AH,Room1_AI,Room1_AJ,Room1_FL,Room1_AL,Room1_AM,Room1_AN],
                   @[Room1_BA,Room1_BB,Room1_BC,Room1_BD,Room1_BE,Room1_BF,Room1_BG,Room1_BH,Room1_BI,Room1_BJ,Room1_BK,Room1_BL,Room1_FL,Room1_FL],
                   @[Room1_CA,Room1_CB,Room1_CC,Room1_CD,Room1_CE,Room1_CF,Room1_CG,Room1_CH,Room1_CI,Room1_CJ,Room1_CK,Room1_FL,Room1_FL,Room1_FL]];
    return self;
}
@end