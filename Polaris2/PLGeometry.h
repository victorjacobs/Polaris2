//
//  PLGeometry.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLHit.h"
#import "PLMaterial.h"

@protocol PLGeometry <NSObject>

@property (readonly, nonatomic) PLMaterial *material;

- (PLHit *)hit:(PLRay *)ray t0:(float)t0 t1:(float)t1;

@end
