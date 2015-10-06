//
//  SpriteCreator.m
//  Recursion?
//
//  Created by Chance Roberts on 8/28/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "SpriteCreator.h"
@implementation SpriteCreator
-(SKSpriteNode *)createNodeWithImage: (NSString *)imageName x: (float)X y: (float)Y w: (float)W h: (float)H rotation: (float)Rot view:(SKView *)view{
    SKSpriteNode *node = [[SKSpriteNode alloc] initWithImageNamed: imageName];
    node.size = CGSizeMake(W*view.bounds.size.width/640,H*view.bounds.size.height/480);
    node.position = CGPointMake((X+W/2)*view.bounds.size.width/640,(480-(Y+H/2))*view.bounds.size.height/480);
    SKAction *act = [SKAction rotateByAngle:Rot duration:0];
    [node runAction: act];
    return node;
}
@end