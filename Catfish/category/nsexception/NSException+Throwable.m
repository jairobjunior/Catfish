//
//  NSException+IllegalInvocation.m
//  Airwave
//
//  Created by Jairo Junior on 8/8/13.
//  Copyright (c) 2013 Oakley. All rights reserved.
//

#import "NSException+Throwable.h"

@implementation NSException (Throwable)

+ (void)throwInternalInconsistencyExceptionMethodMustOverride
{
    @throw [NSException getInternalInconsistencyExceptionMethodMustOverride];
}

+ (NSException*)getInternalInconsistencyExceptionMethodMustOverride
{
    return [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[self getStringMustOverride]
                                 userInfo:nil];
}

+ (void)throwInternalInconsistencyExceptionMethodUnsupported:(NSArray*)methodsArray
{
    @throw [NSException getThrowInternalInconsistencyExceptionMethodUnsupported:methodsArray];
}

+ (NSException*)getThrowInternalInconsistencyExceptionMethodUnsupported:(NSArray*)methodsArray
{
    return [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[self getStringMethodUnsupported:methodsArray]
                                 userInfo:nil];
}

+ (NSString*)getStringMustOverride
{
    return [NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
}

+ (NSString*)getStringMethodUnsupported:(NSArray*)methodsArray
{
    return [NSString stringWithFormat:@"This method is unsupported you should use one of these: %@", [methodsArray componentsJoinedByString:@" - "]];
}

@end
