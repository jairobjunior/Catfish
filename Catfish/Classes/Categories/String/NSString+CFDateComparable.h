//
//  NSString+DateComparable.h
//  Airwave
//
//  Created by Jairo Junior on 9/23/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CFDateComparable)

- (NSComparisonResult)compareDates:(NSString *)someDate;

@end
