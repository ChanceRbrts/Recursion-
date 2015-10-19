//
//  Room1Computer.h
//  Recursion?
//
//  Created by Chance Roberts on 10/7/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#ifndef Room1Computer_h
#define Room1Computer_h
#include "Instance.h"
#include "ControlEnum.h"
/**@brief The computer to move to the next room!*/
@interface Room1Computer : Instance
/**@brief Is the player colliding?*/
@property bool playerCol;
/**@brief Is the computer on?*/
@property bool comOn;
-(int) updateWithPlayer:(Instance *)p room: (int)Room controlsPressed: (NSArray *)conPressed;
@end
#endif /* Room1Computer_h */
