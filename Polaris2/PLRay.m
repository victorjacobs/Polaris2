//
//  PLRay.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLRay.h"
#import "PLVector.h"

@implementation PLRay

- (id)initWithOrigin:(PLVector *)origin andDirection:(PLVector *)direction
{
    self = [super init];
    
    if (self) {
        _direction = [direction normalize];
        _origin = origin;
    }
    
    return self;
}


@end
