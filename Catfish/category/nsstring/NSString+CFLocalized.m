//
//  NSString+Localized.m
//  Airwave
//
//  Created by Jairo Junior on 8/6/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import "NSString+CFLocalized.h"

@implementation NSString (CFLocalized)

+ (NSString*)getStringLocalizedWithKey:(NSString*)key
{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Support" ofType:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    
    return NSLocalizedStringFromTableInBundle(key, @"Root", bundle, nil);
}

+ (NSString*)getStringLocalizedWithKey:(NSString*)key comment:(NSString*)comment
{
    NSString *localizedString = [self getStringLocalizedWithKey:key];
    return [[NSString alloc] initWithFormat:localizedString, comment];
}

@end
