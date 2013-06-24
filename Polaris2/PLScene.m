//
//  PLScene.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLScene.h"

@implementation PLScene

@synthesize surfaces;

- (id) init
{
    self = [super init];
    
    if (self) {
        surfaces = [[NSArray alloc] init];
    }
    
    return self;
}

- (NSColor *)trace:(PLRay *)ray
{
    return nil;
}

@end
