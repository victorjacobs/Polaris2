//
//  PLVectorTests.m
//  Polaris2
//
//  Created by Victor on 28/06/13.
//  Copyright (c) 2013 Victor Jacobs. All rights reserved.
//

#import "PLVectorTests.h"

@implementation PLVectorTests

PLVector *V1;
PLVector *V2;
PLVector *V3;

- (void)setUp
{
    [super setUp];
    
    V1 = [[PLVector alloc] initWithX:1 y:2 z:3];
    V2 = [[PLVector alloc] initWithX:4 y:5 z:6];
    V3 = [[PLVector alloc] initWithX:1 y:1 z:1];
}

- (void)testMultiplication
{
    PLVector *res = [V1 multiply:4];
    
    STAssertEquals(res.x, (float)4, @"Scalar multiplication x");
    STAssertEquals(res.y, (float)8, @"Scalar multiplication y");
    STAssertEquals(res.z, (float)12, @"Scalar multiplication z");
}

- (void)testNormalize
{
    
}

- (void)testDotProduct
{
    float res = [V1 dotProduct:V2];
    
    STAssertEquals(res, (float)32, @"Dot product");
}

- (void)testCrossProduct
{
    PLVector *res = [V1 crossProduct:V2];
    
    STAssertEquals(res.x, (float)-2, @"Cross product x");
    STAssertEquals(res.y, (float)4, @"Cross product y");
    STAssertEquals(res.z, (float)-2, @"Cross product z");
}

- (void)testSum
{
    
}

- (void)tearDown
{
    V1 = nil;
    V2 = nil;
    
    [super tearDown];
}

@end
