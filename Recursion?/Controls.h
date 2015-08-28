//
//  Controls.h
//  Recursion?
//
//  Created by Chance Roberts on 8/21/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#include "ControlEnum.h"

@interface Controls : NSObject
@property NSMutableArray* controlsPressed;
@property NSMutableArray* controlsLastPressed;
@property NSMutableArray* controlsHeld;
-(id)initWithMore;
-(void)keyPressedWithEvent:(NSEvent *)event;
-(void)keyReleasedWithEvent:(NSEvent *)event;
-(void)checkPressed;
-(void)resetControls;
@end


