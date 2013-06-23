//
//  PLVector.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLVector.h"
#import <Accelerate/Accelerate.h>

@implementation PLVector

@synthesize x;
@synthesize y;
@synthesize z;

- (id)initWithX:(float)ix y:(float)iy z:(float)iz
{
    self = [super init];
    
    if (self) {
        x = ix;
        y = iy;
        z = iz;
    }
    
    return self;
}

- (id) initFromArray:(float [3])ary
{
    return [self initWithX:ary[0] y:ary[1] z:ary[2]];
}

- (float)dotProduct:(PLVector *)other
{
    return cblas_sdot(3, [self toArray], 1, [other toArray], 1);
}

- (PLVector *)add:(PLVector *)other
{
    float *ret = [self toArray];
    ret[0] += other.x;
    ret[1] += other.y;
    ret[2] += other.z;
    
    return [[PLVector alloc] initFromArray:ret];
}

- (PLVector *)subtract:(PLVector *)other
{
    float *ret = [self toArray];
    ret[0] -= other.x;
    ret[1] -= other.y;
    ret[2] -= other.z;
    
    return [[PLVector alloc] initFromArray:ret];
}

- (PLVector *)multiply:(int)mult {
    float *ret = [self toArray];
    
    ret[0] *= mult;
    ret[1] *= mult;
    ret[2] *= mult;
    
    return [[PLVector alloc] initFromArray:ret];
}

- (float[3])toArray
{
    return (float[3]){x, y, z};
}

@end
