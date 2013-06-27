//
//  PLLight.h
//  Polaris2
//
//  Created by Victor on 27/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//
//  TODO: maybe move this to superclass, since rayToPoint is kindofsortof generic.

#import <Foundation/Foundation.h>

@class PLVector;
@class PLRay;

@protocol PLLight <NSObject>

@property (readonly, nonatomic) float intensity;
@property (readonly, nonatomic) PLVector *origin;

- (id)initWithOrigin:(PLVector *)origin andIntensity:(float)intensity;
- (PLRay *)rayToPoint:(PLVector *)point;

@end
