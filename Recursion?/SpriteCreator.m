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
-(SKSpriteNode *)createNodeWithImage: (NSString *)imageName x: (float)X y: (float)Y w: (float)W h: (float)H rotation: (float)Rot view: (SKView *)view{
    SKSpriteNode *node = [[SKSpriteNode alloc] initWithImageNamed: imageName];
    node.size = CGSizeMake(view.bounds.size.width*W/640, view.bounds.size.height*H/480);
    node.position = CGPointMake(view.bounds.size.width*X/640-node.size.width/2, view.bounds.size.height-view.bounds.size.height*Y/480-node.size.height/2);
    SKAction *act = [SKAction rotateByAngle:Rot duration:0];
    [node runAction: act];
    return node;
}
@end