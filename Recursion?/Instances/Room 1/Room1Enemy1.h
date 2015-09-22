//
//  Room1Enemy1.h
//  Recursion?
//
//  Created by Chance Roberts on 9/9/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#ifndef Recursion__Room1Enemy1_h
#define Recursion__Room1Enemy1_h
#include "PlatformerInstance.h"
/**@brief The first enemy type of Room 1.*/
@interface Room1Enemy1 : PlatformerInstance
/**@brief Are you facing right?*/
@property bool facingRight;
/**@brief Are you in pursuit of the player?*/
@property bool inPursuit;
@end
#endif
