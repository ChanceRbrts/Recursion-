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
    [self.OBJMAN updateWithControlsHeld: self.c.controlsHeld controlsPressed:self.c.controlsPressed];
    [self.c resetControls];
    [self.c checkPressed];
    [self setupDrawWithInstructions: [self.OBJMAN draw]];
}

-(void)setupDrawWithInstructions:(NSArray *)instru{
    [self removeAllChildren];
    SpriteCreator *sc = [[SpriteCreator alloc] init];
    for (int i = 0; i < instru.count; i++){
        if (((NSArray *)instru[i]).count > 5){
            [self addChild: [sc createNodeWithImage:(NSString *)instru[i][0] x: [((NSNumber *)instru[i][1]) floatValue] y: [((NSNumber *)instru[i][2]) floatValue] w: [((NSNumber *)instru[i][3]) floatValue] h: [((NSNumber *)instru[i][4]) floatValue] rotation: [((NSNumber *)instru[i][5]) floatValue] view: self.view]];
        }
    }
}
@end
