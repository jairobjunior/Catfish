//
//  NSString+Formatted.m
//  Airwave
//
//  Created by Jairo Junior on 9/16/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import "NSString+Formatted.h"

@implementation NSString (Formatted)

+ (NSString*)decimalFormatterWithFloat:(double)value
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    [numberFormatter setMaximumFractionDigits:2];
    return [numberFormatter stringFromNumber:[NSNumber numberWithFloat:value]];
}

@end
