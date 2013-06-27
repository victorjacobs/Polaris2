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
#import "PLScene.h"
#import "PLGeometry.h"

@interface PLHit : NSObject

@property (readonly, nonatomic) PLRay *ray;
@property (readonly, nonatomic) PLVector *location;
@property (readonly, nonatomic) PLVector *normal;
@property (readonly, nonatomic) id <PLGeometry> geometry;
@property (readonly) float t;

- (id)initWithRay:(PLRay *)ray andLocation:(PLVector *)where andNormal:(PLVector *)normal andT:(float)t andGeometry:(id <PLGeometry>)geometry;
- (NSColor *)getColorForScene:(PLScene *)scene;

@end
