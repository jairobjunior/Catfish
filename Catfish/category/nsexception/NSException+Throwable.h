//
//  NSException+IllegalInvocation.h
//  Airwave
//
//  Created by Jairo Junior on 8/8/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSException (Throwable)

+ (void)throwInternalInconsistencyExceptionMethodMustOverride;
+ (NSException*)getInternalInconsistencyExceptionMethodMustOverride;

+ (void)throwInternalInconsistencyExceptionMethodUnsupported:(NSArray*)methodsArray;
+ (NSException*)getThrowInternalInconsistencyExceptionMethodUnsupported:(NSArray*)methodsArray;

@end
