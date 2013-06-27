//
//  PLDirectionalLight.m
//  Polaris2
//
//  Created by Victor on 27/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLPointLight.h"
#import "PLLight.h"
#import "PLRay.h"
#import "PLVector.h"

@implementation PLPointLight

@synthesize intensity = _intensity;
@synthesize origin = _origin;

- (id)initWithOrigin:(PLVector *)origin andIntensity:(float)intensity
{
    if (self = [super init]) {
        _origin = origin;
        _intensity = intensity;
    }
    
    return self;
}

- (PLRay *)rayToPoint:(PLVector *)point
{
    PLVector *direction = [[_origin subtract:point] normalize];
    
    return [[PLRay alloc] initWithOrigin:_origin andDirection:direction];
}

@end
