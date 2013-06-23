//
//  PLSphere.m
//  Polaris2
//
//  Created by Victor on 23/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLSphere.h"
#import "PLVector.h"

@implementation PLSphere

@synthesize origin;
@synthesize radius;

- (id)initWithOrigin:(PLVector *)or andRadius:(float)rad
{
    self = [super init];
    
    if (self) {
        origin = or;
        radius = rad;
    }
    
    return self;
}

- (BOOL)hit:(PLRay *)ray t0:(float)t0 t1:(float)t1
{
    float A = [ray.direction dotProduct:ray.direction];
    float B = [[[ray.origin subtract:self.origin] multiply:2] dotProduct:ray.direction];
    PLVector *C1 = [ray.origin subtract:origin];
    float C = [C1 dotProduct:C1] - radius * radius;
    
    float disc = B * B - 4 * A * C;
    
    if (disc < 0) return NO;
    
    float tPlus = (-B + sqrt(disc)) / (2 * A);
    float tMin = (-B - sqrt(disc)) / (2 * A);
    float t;
    
    if (tMin > t0 && tMin < t1) {
        t = tMin;
    } else if (tPlus > t0 && tPlus < t1) {
        t = tPlus;
    } else {
        return NO;
    }
    
    // Calculate hit point
    //Vector3f where = ray.getOrigin().sum(ray.getDirection().multiply(t));
    
    // Normal vector
    //Vector3f normal = where.minus(center).normalize();
    
    //return new Hit(ray, this, where, normal, getLocalCoordinateFor(new Point3f(where)), t);
    return YES;
}

@end