//
//  Controls.h
//  Recursion?
//
//  Created by Chance Roberts on 8/21/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#include "ControlEnum.h"
/**@brief The object that handles all controls.*/
@interface Controls : NSObject
/**@brief All of the controls that have been pressed*/
@property NSMutableArray* controlsPressed;
/**@brief All of the controls that have been pressed since the beginning of the current frame*/
@property NSMutableArray* controlsLastPressed;
/**@brief All of the controls that are being held.*/
@property NSMutableArray* controlsHeld;
/**@brief The true initializer.*/
-(id)initWithMore;
/**@brief Records what key has been pressed.*/
-(void)keyPressedWithEvent:(NSEvent *)event;
/**@brief Records what key has been released.*/
-(void)keyReleasedWithEvent:(NSEvent *)event;
/**@brief Sets the controlsPressed array from controlsLastPressed*/
-(void)checkPressed;
/**@brief Sets all controlsPressed to false.*/
-(void)resetControls;
@end


