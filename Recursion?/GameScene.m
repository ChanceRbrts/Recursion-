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
    SKSpriteNode *reset = [SKSpriteNode spriteNodeWithColor: [NSColor colorWithRed:0 green:0 blue:0 alpha:self.OBJMAN.roomReset/180.0]size: CGSizeMake(1,1)];
    reset.position = CGPointMake(0.5,0.5);
    [self addChild: reset];
    if (self.OBJMAN.room == 1 && self.OBJMAN.player1.hp > 0){
        SKSpriteNode *hit = [SKSpriteNode spriteNodeWithColor: [NSColor colorWithRed: 0.1 green: 0.7 blue: 1 alpha: (self.OBJMAN.player1.maxBuffer-self.OBJMAN.player1.buffer)*1.0/self.OBJMAN.player1.maxBuffer] size: CGSizeMake(self.OBJMAN.player1.w/626, self.OBJMAN.player1.h/626)];
        hit.position = CGPointMake(((self.OBJMAN.player1.x-self.OBJMAN.viewX)+self.OBJMAN.player1.w/2)/626,(551-((self.OBJMAN.player1.y-self.OBJMAN.viewY)+self.OBJMAN.player1.h/2))/626);
        [self addChild: hit];
    }
}
@end
