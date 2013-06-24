//
//  PLVector.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PLVector : NSObject

@property (nonatomic, readonly) float x;
@property (nonatomic, readonly) float y;
@property (nonatomic, readonly) float z;

- (id)initWithX:(float)x y:(float)y z:(float)z;
- (id)initFromArray:(float[3])ary;

- (PLVector*)add:(PLVector*)other;
- (PLVector*)subtract:(PLVector*)other;
- (PLVector*)multiply:(int)mult;
- (float)dotProduct:(PLVector*)other;
- (PLVector*)crossProduct:(PLVector*)other;
- (PLVector*)normalize;

- (float[3])toArray;

@end
