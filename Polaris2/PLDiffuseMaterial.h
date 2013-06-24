//
//  PLDiffuseMaterial.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLMaterial.h"

@interface PLDiffuseMaterial : NSObject <PLMaterial>

@property (nonatomic, readonly) NSColor *color;

- (id)initWithColor:(NSColor *)color;

@end
