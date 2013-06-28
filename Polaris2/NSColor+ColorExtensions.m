//
//  NSColor+ColorExtensions.m
//  Polaris2
//
//  Created by Victor on 27/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "NSColor+ColorExtensions.h"

@implementation NSColor (ColorExtensions)

+ (NSColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue
{
    return [NSColor colorWithCalibratedRed:red green:green blue:blue alpha:1];
}

+ (NSColor *)colorFromArray:(CGFloat *)ary
{
    return [NSColor colorWithRed:ary[0] green:ary[1] blue:ary[2]];
}

- (NSColor *)sum:(NSColor *)other
{
    CGFloat *resultingColor = NULL;
    [self getComponents:resultingColor];
    
    resultingColor[0] += [other redComponent];
    resultingColor[1] += [other greenComponent];
    resultingColor[2] += [other greenComponent];
    
    return [NSColor colorFromArray:resultingColor];
}

- (NSColor *)multiplyWithFloat:(float)mult
{
    CGFloat *resultingColor = NULL;
    [self getComponents:resultingColor];
    
    resultingColor[0] *= mult;
    resultingColor[1] *= mult;
    resultingColor[2] *= mult;
    
    return [NSColor colorFromArray:resultingColor];
}

- (NSColor *)multiplyWithColor:(NSColor *)mult
{
    CGFloat *resultingColor = NULL;
    [self getComponents:resultingColor];
    
    resultingColor[0] *= [mult redComponent];
    resultingColor[1] *= [mult greenComponent];
    resultingColor[2] *= [mult blueComponent];
    
    return [NSColor colorFromArray:resultingColor];
}

@end
