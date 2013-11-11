//
//  NSString+Localized.m
//  Airwave
//
//  Created by Jairo Junior on 8/6/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import "NSString+Localized.h"

@implementation NSString (Localized)

+ (NSString*)getStringLocalizedWithKey:(NSString*)key
{
    return NSLocalizedString(key, nil);
}

+ (NSString*)getStringLocalizedWithKey:(NSString*)key comment:(NSString*)comment
{
    NSString *localizedString = [self getStringLocalizedWithKey:key];
    return [[NSString alloc] initWithFormat:localizedString, comment];
}

@end
