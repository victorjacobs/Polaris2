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
#import "PLGeometry.h"

@interface PLSphere : NSObject <PLGeometry>

@property (readonly) PLVector* origin;
@property (readonly) float radius;

- (id)initWithOrigin: (PLVector*)origin andRadius: (float)radius;

@end
