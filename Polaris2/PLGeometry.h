//
//  PLGeometry.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLHit.h"

@protocol PLGeometry <NSObject>

- (PLHit*)hit: (PLRay*)ray t0:(float)t0 t1:(float)t1;

@end
