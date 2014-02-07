//
//  NSString+Formatted.h
//
//  Created by Jairo Junior on 9/16/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CFFormatted)

+ (NSString*)decimalFormatterWithFloat:(double)value;
+ (NSString*)currencyFormatterWithFloat:(double)value;

@end
