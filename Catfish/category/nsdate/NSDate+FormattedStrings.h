//
//  NSDate+FormattedStrings.h
//  Airwave
//
//  Created by Jairo Junior on 8/29/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (FormattedStrings)

- (NSString *)dateWithDaySuffix;
- (NSString *)dayWithSuffix;
- (NSString *)hourWithMinutes;

@end
