//
//  SpriteCreator.h
//  Recursion?
//
//  Created by Chance Roberts on 8/28/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#ifndef Recursion__SpriteCreator_h
#define Recursion__SpriteCreator_h
#import <SpriteKit/SpriteKit.h>
/**@brief Responsible for creating SpriteNodes and putting them on the view.*/
@interface SpriteCreator : NSObject
/**@brief Creates a SKSprite Node based on parameters given via the NSArrays.*/
-(SKSpriteNode *)createNodeWithImage: (NSString *)imageName x: (float)X y: (float)Y w: (float)W h: (float)H rotation: (float)Rot view: (SKView *)view;
@end
#endif
