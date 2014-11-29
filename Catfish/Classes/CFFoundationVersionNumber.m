//
//  FoundationVersionNumber.m
//
//  Created by Jairo Junior on 10/7/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import "CFFoundationVersionNumber.h"

@implementation CFFoundationVersionNumber

+ (void)executeWhenFoundationVersionNumber_iOS_7_Later:(void (^)(void))callbackBlock
{
    if (floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1) {
        callbackBlock();
    }
}

+ (void)executeWhenFoundationVersionNumber_iOS_6_1_Earlier:(void (^)(void))callbackBlock
{
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        callbackBlock();
    }
    [UIColor colorWithRed:0.756 green:0.519 blue:1.000 alpha:1.000];
}

@end
