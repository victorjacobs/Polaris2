//
//  PLRay.h
//  Polaris2
//
//  Created by Victor on 24/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PLVector;

@interface PLRay : NSObject

@property (readonly, nonatomic) PLVector *origin;
@property (readonly, nonatomic) PLVector *direction;

- (id) initWithOrigin:(PLVector *)origin andDirection:(PLVector *)direction;

@end
