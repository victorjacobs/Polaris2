//
//  PLHit.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLRay.h"
#import "PLVector.h"

@interface PLHit : NSObject

@property (readonly, nonatomic) PLRay *ray;
@property (readonly, nonatomic) PLVector *location;
@property (readonly, nonatomic) PLVector *normal;
@property (readonly) float t;

- (id)initWithRay:(PLRay *)ray andLocation:(PLVector *)where andNormal:(PLVector *)normal andT:(float)t;

@end
