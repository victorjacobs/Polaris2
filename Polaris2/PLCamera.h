//
//  PLCamera.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLVector.h"

@interface PLCamera : NSObject

@property (nonatomic, readonly) PLVector *position;
@property (nonatomic, readonly) PLVector *up;
@property (nonatomic, readonly) PLVector *gaze;
@property (nonatomic, readonly) float fov;


@end
