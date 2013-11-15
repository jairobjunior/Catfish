//
//  NSString+Formatted.h
//  Airwave
//
//  Created by Jairo Junior on 9/16/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CFFormatted)

+ (NSString*)decimalFormatterWithFloat:(double)value;

@end