//
//  PLHit.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLHit.h"
#import "PLMaterial.h"

@implementation PLHit

- (id)initWithRay:(PLRay *)ray andLocation:(PLVector *)location andNormal:(PLVector *)normal andT:(float)t andGeometry:(id<PLGeometry>)geometry
{
    self = [super init];
    
    if (self) {
        _ray = ray;
        _location = location;
        _normal = normal;
        _t = t;
        _geometry = geometry;
    }
    
    return self;
}

- (NSColor *)getColorForScene:(PLScene *)scene
{
    return [_geometry.material getColorForHit:self andScene:scene];
}

@end
