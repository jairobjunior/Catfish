//
//  SYUIButtonBorder.h
//  Sycuan
//
//  Created by Jairo Junior on 11/15/13.
//  Copyright (c) 2013 SookApps. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kCFUIButtonBorderColor [UIColor blackColor]
#define kCFUIButtonBGColor [UIColor colorWithWhite:1.0 alpha:0.25]

@interface CFUIButtonBorder : UIButton

- (id)initWithFrame:(CGRect)frame title:(NSString*)title;

+ (void)setBorderColor:(UIColor*)color;
- (void)setBorderColor:(UIColor*)color;

+ (void) setBackgroundColorForHighlightedState:(UIColor*)color;
- (void) setBackgroundColorForHighlightedState:(UIColor*)color;

@end
