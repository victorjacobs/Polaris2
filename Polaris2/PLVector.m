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

- (id) initFromArray:(NSArray *)ary
{
    return [self initWithX:[ary[0] floatValue] y:[ary[1] floatValue] z:[ary[2] floatValue]];
}

#pragma mark Operations

- (float)dotProduct:(PLVector *)other
{
    float o[3] = {other.x, other.y, other.z};
    float s[3] = {_x, _y, _z};
    
    return cblas_sdot(3, s, 1, o, 1);
}

- (PLVector *)add:(PLVector *)other
{
    NSArray *ret = @[@(_x + other.x), @(_y + other.y), @(_z + other.z)];
    
    return [[PLVector alloc] initFromArray:ret];
}

- (PLVector *)subtract:(PLVector *)other
{
    NSArray *ret = @[@(_x - other.x), @(_y - other.y), @(_z - other.z)];
    
    return [[PLVector alloc] initFromArray:ret];
}

- (PLVector *)multiply:(int)mult
{
    float s[3] = {_x, _y, _z};
    
    cblas_sscal(3, mult, s, 1);
    
    return [[PLVector alloc] initWithX:s[0] y:s[1] z:s[2]];
}

- (PLVector *)normalize
{
    float s[3] = {_x, _y, _z};
    
    cblas_sscal(3, 1.0 / cblas_snrm2(3, s, 1), s, 1);
    
    return [[PLVector alloc] initWithX:s[0] y:s[1] z:s[2]];
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
    float o[3] = {other.x, other.y, other.z};
    float s[3] = {_x, _y, _z};
    
    int stride = 1;   // TODO voidpointers = mind full of fuck
    
    catlas_caxpby(3, &stride, s, 1, &stride, o, 1);
    
    return [[PLVector alloc] initWithX:o[0] y:o[1] z:o[2]];
}

@end
