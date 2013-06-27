//
//  PLScene.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PLRay;
@class PLCamera;

@interface PLScene : NSObject

@property (nonatomic, readonly) NSMutableArray *surfaces;
@property (nonatomic, readonly) NSMutableArray *lights;
// Maybe following two r/w
@property (nonatomic, readonly) PLCamera *camera;
@property (nonatomic, readonly) NSColor *backgroundColor;

- (id)initWithCamera:(PLCamera *)camera andBackgroundColor:(NSColor *)backgroundColor;
- (NSColor *)trace:(PLRay *)ray;

@end
