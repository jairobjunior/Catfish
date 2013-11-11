//
//  NSString+Validation.m
//  Aftermath
//
//  Created by Jairo Barros (jairobjunior@gmail.com) & Ramon Barros (ramonpbarros@gmail.com) 07/14/2013.
//  Copyright (c) 2013 Jairo Junior & Ramon Barros. All rights reserved.
//

#import "NSString+Validation.h"

@implementation NSString (Validation)


- (BOOL)isValidEmailFormat
{
    /* Checks for minimum of "x@y.z"
     * Does not allow more than one "@" character.
     * Does not allow consecutive "." characters.
     */
    
    if ([self length] < 5) {
        return NO;
    }
    
    // Check for "@" char within string, but not at either end
    NSRange range = [self rangeOfString:@"@"];
    if (range.location == NSNotFound || range.location < 1 || range.location >= [self length]-1) {
        return NO;
    }
    
    // Check for multiple "@" chars
    NSRange range2 = [self rangeOfString:@"@" options:NSBackwardsSearch];
    if (range2.location != range.location) {
        return NO;
    }
    
    NSString *domain = [self componentsSeparatedByString:@"@"][1];
    
    if ([domain length] < 3) {
        return NO;
    }
    
    // Check for "." char within domain, but not the first character
    range = [domain rangeOfString:@"."];
    if (range.location == NSNotFound || range.location < 1) {
        return NO;
    }
    
    // Check for ".." char within domain
    range = [domain rangeOfString:@".."];
    if (range.location != NSNotFound) {
        return NO;
    }
    
    return YES;
}

- (BOOL)isNotEmpty
{
    return ![self isEmpty];
}

- (BOOL)isEmpty {
    if([self length] == 0) { //string is empty or nil
        return YES;
    }
    
    if(![[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length]) {
        //string is all whitespace
        return YES;
    }
    
    return NO;
}

@end
