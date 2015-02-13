//
//  NSDate+FormattedStrings.h
//
//  Created by Jairo Junior on 8/29/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//  https://github.com/billymeltdown/nsdate-helper

#import <Foundation/Foundation.h>

@interface NSDate (CFFormattedStrings)


- (NSString *)dateToStringISO860;

/**
 * This method uses the pattern MMMM ., yyyy
 *
 * @return June 13th, 2013.
 */
- (NSString *)dateWithDaySuffix;

- (NSString *)dayWithSuffix;
- (NSString *)dateWithNamesMonth;
- (NSString *)dateWithNamesMonthMediumStyle;
- (NSString *)hourWithMinutes;

@end
