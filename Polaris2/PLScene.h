//
//  PLScene.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLRay.h"

@interface PLScene : NSObject

@property (nonatomic, readonly) NSArray *surfaces;

- (NSColor*)trace: (PLRay*)ray;

@end
