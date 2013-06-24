//
//  PLHit.m
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLHit.h"

@implementation PLHit

@synthesize ray;
@synthesize location;
@synthesize normal;
@synthesize t;

- (id)initWithRay:(PLRay *)r andLocation:(PLVector *)where andNormal:(PLVector *)nor andT:(float)ti
{
    self = [super init];
    
    if (self) {
        ray = r;
        location = where;
        normal = nor;
        t = ti;
    }
    
    return self;
}

@end
