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
    node.size = CGSizeMake(W/626, H/626);
    node.position = CGPointMake((X+W/2)/626,(551-(Y+H/2))/626);
    //node.anchorPoint = CGPointMake(0,1);
    SKAction *act = [SKAction rotateByAngle:Rot duration:0];
    [node runAction: act];
    return node;
}
@end