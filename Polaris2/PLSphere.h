//
//  PLSphere.h
//  Polaris2
//
//  Created by Victor on 23/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLVector.h"
#import "PLRay.h"

@interface PLSphere : NSObject

@property (readonly) PLVector* origin;
@property (readonly) float radius;

- (id)initWithOrigin: (PLVector*)origin andRadius: (float)radius;

- (BOOL)hit: (PLRay*)ray t0:(float)t0 t1:(float)t1;

@end
