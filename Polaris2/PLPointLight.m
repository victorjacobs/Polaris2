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
@synthesize color = _color;

- (id)initWithOrigin:(PLVector *)origin andIntensity:(float)intensity andColor:(NSColor *)color;
{
    if (self = [super init]) {
        _origin = origin;
        _intensity = intensity;
        _color = color;
    }
    
    return self;
}

- (id)initWithOrigin:(PLVector *)origin andIntensity:(float)intensity
{
    return [self initWithOrigin:origin andIntensity:intensity andColor:[NSColor whiteColor]];
}

- (PLRay *)rayToPoint:(PLVector *)point
{
    PLVector *direction = [[_origin subtract:point] normalize];
    
    return [[PLRay alloc] initWithOrigin:_origin andDirection:direction];
}

@end
