//
//  GameScene.m
//  Recursion?
//
//  Created by Chance Roberts on 8/21/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /*/* Setup your scene here 
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 65;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];*/
    self.c = [[Controls alloc] initWithMore];
    self.OBJMAN = [[objManager alloc] init];
}

-(void)keyDown:(NSEvent *)theEvent{
    [self.c keyPressedWithEvent:theEvent];
}

-(void)keyUp:(NSEvent *)theEvent{
    [self.c keyReleasedWithEvent:theEvent];
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    [self.c checkPressed];
    [self.OBJMAN update];
    [self.c resetControls];
}

@end
