//
//  PLSphere.m
//  Polaris2
//
//  Created by Victor on 23/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLSphere.h"
#import "PLVector.h"
#import "PLHit.h"

@implementation PLSphere

@synthesize material = _material;

- (id)initWithOrigin:(PLVector *)origin andRadius:(float)radius
{
    self = [super init];
    
    if (self) {
        _origin = origin;
        _radius = radius;
    }
    
    return self;
}

- (PLHit *)hit:(PLRay *)ray t0:(float)t0 t1:(float)t1
{
    float A = [ray.direction dotProduct:ray.direction];
    float B = [[[ray.origin subtract:self.origin] multiply:2] dotProduct:ray.direction];
    PLVector *C1 = [ray.origin subtract:_origin];
    float C = [C1 dotProduct:C1] - _radius * _radius;
    
    float disc = B * B - 4 * A * C;
    
    if (disc < 0) return nil;
    
    float tPlus = (-B + sqrt(disc)) / (2 * A);
    float tMin = (-B - sqrt(disc)) / (2 * A);
    float t;
    
    if (tMin > t0 && tMin < t1) {
        t = tMin;
    } else if (tPlus > t0 && tPlus < t1) {
        t = tPlus;
    } else {
        return nil;
    }
    
    // Calculate hit point
    PLVector *where = [ray.origin add:[ray.direction multiply:t]];
    
    // Normal vector
    PLVector *normal = [[where subtract:_origin] normalize];
    
    PLHit *hit = [[PLHit alloc] initWithRay:ray andLocation:where andNormal:normal andT:t andGeometry:self];
    
    return hit;
}

@end
