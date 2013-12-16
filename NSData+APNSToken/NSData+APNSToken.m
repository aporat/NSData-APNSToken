//
//  NSData_APNSToken.m
//  NSData+APNSToken
//
//  Created by Adar Porat on 12/15/13.
//  Copyright (c) 2013 Adar Porat. All rights reserved.
//

#import "NSData+APNSToken.h"

@implementation NSData (NSData_APNSToken)

- (NSString *)APNSToken {
    return [[[[self description]
                            stringByReplacingOccurrencesOfString: @"<" withString: @""]
                           stringByReplacingOccurrencesOfString: @">" withString: @""]
                          stringByReplacingOccurrencesOfString: @" " withString: @""];
}

@end
