//
//  Room1Lever.h
//  Recursion?
//
//  Created by Chance Roberts on 10/7/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#ifndef Room1Lever_h
#define Room1Lever_h
#include "Instance.h"
/**@brief A "lever" that locks and unlocks things.*/
@interface Room1Lever : Instance
/**@brief The objects that pressing the lever will affect.*/
@property NSArray *obj;
/**@brief Was the lever just pulled?*/
@property bool justPulled;
/**@brief Is the gate currently locking or unlocking the gates?*/
@property bool isLocked;
/**@brief How much time does the lever have?*/
@property double timeFrame;
/**@brief How much time does the level have left?*/
@property double timeLeft;
/**@brief When did the countdown start?*/
@property double countStart;
@end
#endif /* Room1Lever_h */
