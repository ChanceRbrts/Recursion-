//
//  Room1Gate.h
//  Recursion?
//
//  Created by Chance Roberts on 10/6/15.
//  Copyright © 2015 Chance Roberts. All rights reserved.
//

#ifndef Room1Gate_h
#define Room1Gate_h
#include "Solid.h"
/**A gate that opens and closes.*/
@interface Room1Gate : Solid
/**@brief Is the gate unlocked?*/
@property bool unlocked;
/**@brief The starting Y position.*/
@property float yLocked;
/**@brief The unlocked Y position.*/
@property float yUnlocked;
/**@brief The constructor for the gates. H = Blocks gate will rise. unlocked = Is it unlocked?*/
-(id) initWithX:(float)X y:(float)Y gateHeight:(int)H unlocked:(bool)Unlocked index:(NSString*)Index;
@end

#endif /* Room1Gate_h */
