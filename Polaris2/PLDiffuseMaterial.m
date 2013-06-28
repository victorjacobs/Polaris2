//
//  PLDiffuseMaterial.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLDiffuseMaterial.h"
#import "PLLight.h"
#import "NSColor+ColorExtensions.h"

@implementation PLDiffuseMaterial

- (id)initWithColor:(NSColor *)color
{
    if (self = [super init]) {
        _color = color;
    }
    
    return self;
}

- (NSColor *)getColorForHit:(PLHit *)hit andScene:(PLScene *)scene
{
    // Fetch background color
    NSColor *resultingColor = [scene.backgroundColor copy];
    CGFloat dotProduct;
    
    NSColor *tempColor = nil;
    
    // Loop over all lights
    for (id <PLLight> light in scene.lights) {
        dotProduct = [hit.normal dotProduct:[light rayToPoint:hit.location].direction];
        dotProduct = MAX(0, dotProduct);
        
        tempColor = [(NSColor *)[light.color copy] multiplyWithFloat:(light.intensity * dotProduct)];
        resultingColor = [resultingColor sum:tempColor];
    }
    
    return [resultingColor multiplyWithColor:_color];
}

@end
