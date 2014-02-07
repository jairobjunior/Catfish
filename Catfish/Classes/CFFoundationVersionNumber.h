//
//  FoundationVersionNumber.h
//
//  Created by Jairo Junior on 10/7/13.
//  Copyright (c) 2013 Sook Apps. All rights reserved.
//

@interface CFFoundationVersionNumber : NSObject

+ (void)executeWhenFoundationVersionNumber_iOS_7_Later:(void (^)(void))callbackBlock;
+ (void)executeWhenFoundationVersionNumber_iOS_6_1_Earlier:(void (^)(void))callbackBlock;

@end
