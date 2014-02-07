//
//  NSDate+FormattedStrings.h
//
//  Created by Jairo Junior on 8/29/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (CFFormattedStrings)

- (NSString *)dateWithDaySuffix;
- (NSString *)dayWithSuffix;
- (NSString *)dateWithNamesMonth;
- (NSString *)hourWithMinutes;

@end
