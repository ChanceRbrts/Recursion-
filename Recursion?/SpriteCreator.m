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
    node.xScale = view.bounds.size.width*W/640;
    node.yScale = view.bounds.size.height*H/640;
    //node.position = CGPointMake(view.bounds.size.width*X/640, view.bounds.size.height-view.bounds.size.height*Y/480);
    //node.position = CGPointMake(view.bounds.size.width*X/640, view.bounds.size.height-view.bounds.size.height*Y/480);
    node.position = CGPointMake(view.bounds.size.width/2,view.bounds.size.height/2);
    node.anchorPoint = CGPointMake(0,1);
    SKAction *act = [SKAction rotateByAngle:Rot duration:0];
    [node runAction: act];
    NSLog([NSString stringWithFormat: @"%f", node.position.y]);
    return node;
}
@end