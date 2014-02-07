//
//  SYUIButton.h
//
//  Created by Jairo Junior on 11/15/13.
//  Copyright (c) 2013 SookApps. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kCFUIButtonBorderColor [UIColor blackColor]
#define kCFUIButtonBackgroundColorForHighlightedState [UIColor colorWithWhite:1.0 alpha:0.4]

@interface CFUIButton : UIButton

- (id)initWithFrame:(CGRect)frame title:(NSString*)title;

+ (void)setBorderColor:(UIColor*)color;
- (void)setBorderColor:(UIColor*)color;

- (void)removeBorder;
- (void)setBorderWidth:(CGFloat)borderWidth;
- (void)setCornerRadius:(CGFloat)cornerRadius;

+ (void) setBackgroundColorForHighlightedState:(UIColor*)color;
- (void) setBackgroundColorForHighlightedState:(UIColor*)color;

@end
