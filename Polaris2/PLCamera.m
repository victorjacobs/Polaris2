//
//  PLCamera.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <math.h>
#import "PLCamera.h"
#import "PLVector.h"
#import "PLRay.h"

@implementation PLCamera

- (PLRay *)rayToPixelX:(int)x y:(int)y
{
    // Hardcode dimensions for now, TODO: un-hardcode
    int screenX = 300;
    int screenY = 300;
    int distanceToScreen = 5;
    float p = 0.5;
    float q = 0.5;
    
    float aspectRatio = screenY / screenX;
    
    float r = distanceToScreen * (float) tan(_fov / 2);
    float l = -r;
    float t = aspectRatio * l;
    float b = -t;
    
    float u = l + ((r - l) * (x + p)) / screenX;
    float v = b + ((t - b) * (y + q)) / screenY;
    
    PLVector *d1 = [[self.w multiply:distanceToScreen] negate];
    PLVector *d2 = [self.u multiply:u];
    PLVector *d3 = [self.v multiply:v];
    
    PLVector *direction = [d1 sum:[d2 sum:d3]];
    
    return [[PLRay alloc] initWithOrigin:_position andDirection:direction];
}

- (PLVector *)u
{
    return [[_up crossProduct:self.w] normalize];
}

- (PLVector *)v
{
    return [self.w crossProduct:self.u];
}

- (PLVector *)w
{
    return [[_gaze normalize] negate];
}

@end
