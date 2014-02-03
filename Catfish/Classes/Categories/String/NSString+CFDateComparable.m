//
//  NSString+DateComparable.m
//  Airwave
//
//  Created by Jairo Junior on 9/23/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import "NSString+CFDateComparable.h"

@implementation NSString (CFDateComparable)

- (NSComparisonResult)compareDates:(NSString *)someDate {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"dd MMMM, yyyy"];
    
    NSString *firstDateString = [NSString stringWithFormat:@"01 %@", (NSString *)self];
    NSString *secondDateString = [NSString stringWithFormat:@"01 %@", someDate];
    
    NSDate *firstDate = [df dateFromString:firstDateString];
    NSDate *secondDate = [df dateFromString:secondDateString];
    
    return [firstDate compare:secondDate];
}

@end