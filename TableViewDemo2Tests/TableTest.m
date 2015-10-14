//
//  TableTest.m
//  TableViewDemo2
//
//  Created by Sukhvinder on 14/10/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface TableTest : XCTestCase

@end

@implementation TableTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTrue {
    XCTAssert(true,@"its true");
}
-(void)testABCD{
    XCTAssertFalse(false,@"its false");
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
