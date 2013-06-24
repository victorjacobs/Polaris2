//
//  PLDiffuseMaterial.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLDiffuseMaterial.h"

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
    return nil;
}

@end
