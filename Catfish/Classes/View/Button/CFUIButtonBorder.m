//
//  SYUIButtonBorder.m
//  Sycuan
//
//  Created by Jairo Junior on 11/15/13.
//  Copyright (c) 2013 SookApps. All rights reserved.
//

#import "CFUIButtonBorder.h"
#import "UIImage+CFColor.h"

@implementation CFUIButtonBorder

static UIColor *borderColor;
static UIColor *backgroundColorForHighlightedState;

- (id)initWithFrame:(CGRect)frame
{
    self = [self initWithFrame:frame title:@""];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame title:(NSString*)title
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setTitle:title forState:UIControlStateNormal];
        [self setupButton];
    }
    
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    if (!borderColor) {
        borderColor = kCFUIButtonBorderColor;
    }
    
    if (!backgroundColorForHighlightedState) {
        backgroundColorForHighlightedState = kCFUIButtonBorderColor;
    }
    
    [self setupButton];
}

- (void)setupButton
{
    [self setBorderColor:borderColor];
    [self setBackgroundColorForHighlightedState:backgroundColorForHighlightedState];
}

+ (void)setBorderColor:(UIColor*)color
{
    borderColor = color;
}

- (void)setBorderColor:(UIColor*)color
{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = 1.8;
}

+ (void)setBackgroundColorForHighlightedState:(UIColor*)color
{
    backgroundColorForHighlightedState = color;
}

- (void)setBackgroundColorForHighlightedState:(UIColor*)color
{
    [self setBackgroundImage:[UIImage imageWithColor:color] forState:UIControlStateHighlighted];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
