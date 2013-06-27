//
//  PLScene.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLScene.h"
#import "PLGeometry.h"
#import "PLHit.h"

@implementation PLScene

- (id) init
{
    self = [super init];
    
    if (self) {
        _surfaces = [@[] mutableCopy];
        _lights = [@[] mutableCopy];
    }
    
    return self;
}

- (NSColor *)trace:(PLRay *)ray
{
    // TODO move this EPS
    float eps = 0.1f;
    
    PLHit *hit;
    float minT = INFINITY;
    PLHit *closestHit = nil;
    
    // Brute force tracing
    for (id geom in _surfaces) {
        if ((hit = [geom hit:ray t0:eps t1:minT]) != nil) {
            minT = hit.t;
            closestHit = hit;
        }
    }
    
    if (closestHit == nil) {
        // TODO return background color
        return [NSColor blackColor];
    } else {
        return [closestHit getColorForScene:self];
    }
}

@end
