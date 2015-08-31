//
//  Instance.h
//  Recursion?
//
//  Created by Chance Roberts on 8/26/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#ifndef Recursion__Instance_h
#define Recursion__Instance_h
/**@brief Everything all Instances should have!*/
@interface Instance : NSObject
/**@brief The x position*/
@property float x;
/**@brief The y position*/
@property float y;
/**@brief The velocity in the x direction (Right = Pos.)*/
@property float dX;
/**@brief The velocity in the y direction (Down = Pos.)*/
@property float dY;
/**@brief The width of the object.*/
@property float w;
/**@brief The height of the object.*/
@property float h;
/**@brief The current HP of an object.*/
@property float hp;
/**@brief The maximum HP of an object.*/
@property float maxHP;
/**@brief What collision type? (Solid, Slope, Transparent)*/
@property NSString *type;
/**@brief What is the name of the object?*/
@property NSString *index;
/**@brief Is it an enemy? (Not, Platformer, All-Sides)*/
@property NSString *enemy;
/**@brief Initialize an object with position!
 @param X The x position in a 32 by 32 grid.
 @param Y The y position in a 32 by 32 grid.*/
-(id)initWithX:(float)X y:(float)Y;
/**@brief Running code for more depth into collision.
 @param dg: Rotation in the unit circle (in degrees) relative to the current object that the collided object is in.*/
-(void) extraCollisionWithDegree:(int)dg;
/**@brief Collision check with another instance.
 @param i The instance in question.*/
-(Instance *) collisionWithInstance:(Instance *)i;
/**@brief The command that updates the states of the instances.*/
-(void) update;
/**@brief AI of non-controlled instances.*/
-(void) ai;
/**@brief Sends out an array of things for the SpriteCreator to create a node for the funciton.*/
-(NSArray *) draw;
/**Actually moves the objects. TO BE RUN AT THE END OF THE MAIN UPDATE LOOP.*/
-(void) finishUpdate;
@end

#endif
