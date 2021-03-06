//
//  PLAppDelegate.m
//  Polaris2
//
//  Created by Victor on 23/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLAppDelegate.h"
#import "PLScene.h"
#import "PLSphere.h"
#import "PLVector.h"
#import "PLPointLight.h"
#import "PLRay.h"
#import "PLCamera.h"

@implementation PLAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"Testing some stuff and things");
    
    PLCamera *camera = [[PLCamera alloc] initWithPosition:[[PLVector alloc] initWithX:0 y:0 z:0] andUp:[[PLVector alloc] initWithX:0 y:0 z:1] andGaze:[[PLVector alloc] initWithX:1 y:0 z:0] andFov:60];
    
    PLScene *scene = [[PLScene alloc] initWithCamera:camera andBackgroundColor:[NSColor blackColor]];
    [scene.lights addObject:[[PLPointLight alloc] initWithOrigin:[[PLVector alloc] initWithX:0 y:1 z:0] andIntensity:0.7f]];
    [scene.surfaces addObject:[[PLSphere alloc] initWithOrigin:[[PLVector alloc] initWithX:0 y:2 z:0] andRadius:1]];
    
    // Render loop, will move this somewhere else in the future
    PLRay *ray;
    NSColor *color;
    
    for (int x = 0; x < 100; x++) {
        for (int y = 0; y < 100; y++) {
            ray = [scene.camera rayToPixelX:x y:y];
            color = [scene trace:ray];
            
            NSLog(@"%f", [color redComponent]);
        }
    }
}

@end
