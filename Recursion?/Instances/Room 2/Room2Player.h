//
//  Room2Player.h
//  Recursion?
//
//  Created by Chance Roberts on 10/19/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#ifndef Room2Player_h
#define Room2Player_h
#include "Instance.h"
#include "ControlEnum.h"
/**@brief The player in the second section.*/
@interface Room2Player : Instance
/**@brief Which direction is the player facing? (Counter-clockwise, starting right.) */
@property int direction;
/**@brief An update function that requires keyboard commands.
 @param con The controls that are being held.
 @param conPressed The controls that are being pressed.*/
-(void)updateWithControlsHeld: (NSArray *)con controlsPressed: (NSArray*)conPressed;
@end
#endif /* Room2Player_h */
