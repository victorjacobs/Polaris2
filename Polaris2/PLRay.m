//
//  PLRay.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLRay.h"

@implementation PLRay

@synthesize direction;
@synthesize origin;

- (id)initWithOrigin:(PLVector *)or andDirection:(PLVector *)dir
{
    self = [super init];
    
    if (self) {
        direction = dir;
        origin = or;
    }
    
    return self;
}


@end
