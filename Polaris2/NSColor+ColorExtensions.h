//
//  NSColor+ColorExtensions.h
//  Polaris2
//
//  Created by Victor on 27/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSColor (ColorExtensions)

+ (NSColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;
+ (NSColor *)colorFromArray:(CGFloat *)ary;

- (NSColor *)sum:(NSColor *)other;
- (NSColor *)multiplyWithFloat:(float)mult;
- (NSColor *)multiplyWithColor:(NSColor *)mult;

@end
