//
//  Instance.h
//  Recursion?
//
//  Created by Chance Roberts on 8/26/15.
//  Copyright (c) 2015 Chance Roberts. All rights reserved.
//

#ifndef Recursion__Instance_h
#define Recursion__Instance_h
@interface Instance : NSObject
@property float x, y, dX, dY, w, h, hp, maxHP;
@property NSString *type, *index, *enemy;
-(id)initWithX:(float)X y:(float)Y;
-(void) extraCollisionWithDegree:(int)dg;
-(Instance *) collisionWithInstance:(Instance *)i;
-(void) update;
-(void) ai;
-(NSMutableArray *) draw;
-(void) finishUpdate;
@end

#endif
