//
//  PLCamera.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PLVector;
@class PLRay;

@interface PLCamera : NSObject

@property (nonatomic, readonly) PLVector *position;
@property (nonatomic, readonly) PLVector *up;
@property (nonatomic, readonly) PLVector *gaze;
@property (nonatomic, readonly) float fov;

@property (nonatomic, readonly) PLVector *u;
@property (nonatomic, readonly) PLVector *v;
@property (nonatomic, readonly) PLVector *w;

- (PLRay *)rayToPixelX:(int)x y:(int)y;

@end
