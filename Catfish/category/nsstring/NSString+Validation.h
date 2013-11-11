//
//  NSString+Validation.h
//  Aftermath
//
//  Created by Jairo Barros (jairobjunior@gmail.com) & Ramon Barros (ramonpbarros@gmail.com) 07/14/2013.
//  Copyright (c) 2013 Jairo Junior & Ramon Barros. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Validation)

- (BOOL)isValidEmailFormat;

- (BOOL)isEmpty;

- (BOOL)isNotEmpty;

@end
