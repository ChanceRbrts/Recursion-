//
//  Controls.h
//  Recursion?
//
//  Created by Chance Roberts on 8/21/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

enum conKeys{
    LEFT=0,
    RIGHT,
    UP,
    DOWN,
    A,
    B,
    C,
    D,
    START,
    SELECT
};

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


