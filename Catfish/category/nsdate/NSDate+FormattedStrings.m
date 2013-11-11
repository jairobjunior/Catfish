//
//  NSDate+FormattedStrings.m
//  Airwave
//
//  Created by Jairo Junior on 8/29/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import "NSDate+FormattedStrings.h"

#define kSuffixDays @"|st|nd|rd|th|th|th|th|th|th|th|th|th|th|th|th|th|th|th|th|th|st|nd|rd|th|th|th|th|th|th|th|st"

@implementation NSDate (FormattedStrings)

//June 13th, 2013
- (NSString *)dateWithDaySuffix
{    
    NSDateFormatter *prefixDateFormatter = [[NSDateFormatter alloc] init];
    [prefixDateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [prefixDateFormatter setDateFormat:@"MMMM ., yyyy"];//June 13th, 2013
    
    NSString * prefixDateString = [prefixDateFormatter stringFromDate:self];
    
    return [prefixDateString stringByReplacingOccurrencesOfString:@"." withString:[self dayWithSuffix]];
}

//** Return 1st, 2nd, 3rd...
- (NSString *)dayWithSuffix
{    
    NSDateFormatter *dayFormatter = [[NSDateFormatter alloc] init];
    [dayFormatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [dayFormatter setDateFormat:@"d."];
    
    NSString * dayFormatterString = [dayFormatter stringFromDate:self];
    NSArray *suffixes = [kSuffixDays componentsSeparatedByString: @"|"];
    NSString *suffix = [suffixes objectAtIndex:[dayFormatterString intValue]];
    
    return [dayFormatterString stringByReplacingOccurrencesOfString:@"." withString:suffix];
}

//12:01 PM
- (NSString *)hourWithMinutes
{
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"h:mm a"];
    return [format stringFromDate:self];
}

@end
