//
//  PLVector.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//
//  TODO: maybe normalize by default?

#import "PLVector.h"
#import <Accelerate/Accelerate.h>

@implementation PLVector

- (id)initWithX:(float)x y:(float)y z:(float)z
{
    self = [super init];
    
    if (self) {
        _x = x;
        _y = y;
        _z = z;
    }
    
    return self;
}

- (id) initFromArray:(float [3])ary
{
    return [self initWithX:ary[0] y:ary[1] z:ary[2]];
}

- (float[3])toArray
{
    return (float[3]){_x, _y, _z};
}

#pragma mark Operations

- (float)dotProduct:(PLVector *)other
{
    return cblas_sdot(3, [self toArray], 1, [other toArray], 1);
}

- (PLVector *)add:(PLVector *)other
{
    float ret[3] = {_x, _y, _z};
    
    ret[0] += other.x;
    ret[1] += other.y;
    ret[2] += other.z;
    
    return [[PLVector alloc] initFromArray:ret];
}

- (PLVector *)subtract:(PLVector *)other
{
    float ret[3] = {_x, _y, _z};
    
    ret[0] -= other.x;
    ret[1] -= other.y;
    ret[2] -= other.z;
    
    return [[PLVector alloc] initFromArray:ret];
}

- (PLVector *)multiply:(int)mult {
    float ret[3] = {_x, _y, _z};
    
    ret[0] *= mult;
    ret[1] *= mult;
    ret[2] *= mult;
    
    return [[PLVector alloc] initFromArray:ret];
}

- (PLVector *)normalize
{
    float ary[3] = {_x, _y, _z};    // TODO why not float ary[] = [self toArray]
    float sum;
    
    sum = ary[0] + ary[1] + ary[2];
    
    ary[0] /= sum;
    ary[1] /= sum;
    ary[2] /= sum;
    
    return [[PLVector alloc] initFromArray:ary];
}

- (PLVector *)negate
{
    return [[PLVector alloc] initWithX:-_x y:-_y z:-_z];
}

- (PLVector *)sum:(PLVector *)other
{
    return [[PLVector alloc] initWithX:_x+other.x y:_y+other.y z:_z+other.z];
}

- (PLVector *)crossProduct:(PLVector *)other
{
    float res[3] = {other.x, other.y, other.z};
    
    int stride = 1;   // TODO voidpointers = mind full of fuck
    
    catlas_caxpby(3, &stride, [self toArray], 1, &stride, res, 1);
    
    return [[PLVector alloc] initFromArray:res];
}

@end
