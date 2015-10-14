//
//  TableViewDemo2Tests.m
//  TableViewDemo2Tests
//
//  Created by Sukhvinder on 16/09/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface TableViewDemo2Tests : XCTestCase

@end

@implementation TableViewDemo2Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNil{
    XCTAssertNil(nil,@"its supposed to be nill");
}

- (void)testNotNil2{
    XCTAssertNotNil(@"hello",@"its supposed to be nill");
}

-(void)testnilForTableClass{
    TableViewDemo2Tests *tabl;
    XCTAssertNil(tabl,@"its nill");
    
}

-(void)testtableNotNil{
    TableViewDemo2Tests *tablllle =[[TableViewDemo2Tests alloc]init];
    XCTAssertNotNil(tablllle,@"its not nill though");
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
-(void)testtableNotNil2{
    TableViewDemo2Tests *tablllle =[[TableViewDemo2Tests alloc]init];
    XCTAssertTrue(tablllle,@"its not nill though");
}




@end
