//
//  NSString+Localized.h
//
//  Created by Jairo Junior on 8/6/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CFLocalized)

+ (NSString*)getStringLocalizedWithKey:(NSString*)key;
+ (NSString*)getStringLocalizedWithKey:(NSString*)key comment:(NSString*)comment;

@end
