//
//  PLAppDelegate.m
//  Polaris2
//
//  Created by Victor on 23/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLAppDelegate.h"
#import "PLVector.h"

@implementation PLAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    PLVector *vec = [[PLVector alloc] initWithX:1 y:2 z:3];
    PLVector *vec2 = [[PLVector alloc] initWithX:1 y:2 z:3];
    
    printf("%f", [vec add:vec2].x);
}

@end
