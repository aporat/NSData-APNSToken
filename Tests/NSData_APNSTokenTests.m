//
// Copyright 2011-2015 Adar Porat (https://github.com/aporat)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import <XCTest/XCTest.h>
#import "NSData+APNSToken.h"


@interface NSData_APNSTokenTests : XCTestCase

@end

@implementation NSData_APNSTokenTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    
    NSString *dataIn = @"<657f02b5 a80c71b3 13f1425f b9fe0559 3a10887b d1aab987 5d10c900 419d17a2>";
    NSData *apnsToken = [self covertNSDataFromDescription:dataIn];
    XCTAssertTrue([[apnsToken APNSToken] isEqualToString:@"657f02b5a80c71b313f1425fb9fe05593a10887bd1aab9875d10c900419d17a2"]);
}

- (NSData *)covertNSDataFromDescription:(NSString *)nsdataDescription {
    const char *ptr = [nsdataDescription cStringUsingEncoding:NSUTF8StringEncoding];
    
    NSMutableData *data = [NSMutableData data];
    
    while (*ptr) {
        unsigned char c1 = *ptr;
        ptr++;
        if (isalpha(c1))
            c1 = (10 + c1 - 'a')<<4;
        else if (isnumber(c1))
            c1 = (c1 - '0')<<4;
        else
            continue;
        if (!*ptr)
            break; // Shouldn't occure -- bad input
        unsigned char c2 = *ptr;
        ptr++;
        if (isalpha(c2))
            c2 = 10 + c2 - 'a';
        else if (isnumber(c2))
            c2 = c2 - '0';
        c1 = c1 | c2;
        [data appendBytes:&c1 length:1];
    }
    
    return data;
}

@end
