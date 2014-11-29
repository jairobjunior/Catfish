//
//  NSString+Formatted.m
//
//  Created by Jairo Junior on 9/16/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import "NSString+CFFormatted.h"

@implementation NSString (CFFormatted)

+ (NSString*)decimalFormatterWithFloat:(double)value
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    [numberFormatter setMaximumFractionDigits:2];
    return [numberFormatter stringFromNumber:[NSNumber numberWithFloat:value]];
}

+ (NSString*)currencyFormatterWithFloat:(double)value
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [numberFormatter setMaximumFractionDigits:0];
    return [numberFormatter stringFromNumber:[NSNumber numberWithFloat:value]];
}

@end
