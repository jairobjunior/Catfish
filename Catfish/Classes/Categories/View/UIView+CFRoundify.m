//
//  UIImage+CFColor.m
//  Catfish
//
//  Created by Jairo Junior on 12/12/13.
//  Copyright (c) 2013 Sook. All rights reserved.
//
//  Credits to: http://stackoverflow.com/users/632736/freeasinbeer
//  On the post: http://stackoverflow.com/questions/4847163/round-two-corners-in-uiview
//  How to use it: [myView addRoundedCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight withRadii:CGSizeMake(20.0f, 20.0f)];
//

#import "UIView+CFRoundify.h"

@implementation UIView (CFRoundify)

- (void)addRoundedCorners:(UIRectCorner)corners withRadii:(CGSize)radii
{
    CALayer *tMaskLayer = [self maskForRoundedCorners:corners withRadii:radii];
    self.layer.mask = tMaskLayer;
}

- (CALayer*)maskForRoundedCorners:(UIRectCorner)corners withRadii:(CGSize)radii
{
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = self.bounds;
    
    UIBezierPath *roundedPath = [UIBezierPath bezierPathWithRoundedRect:
                                 maskLayer.bounds byRoundingCorners:corners cornerRadii:radii];
    maskLayer.fillColor = [[UIColor whiteColor] CGColor];
    maskLayer.backgroundColor = [[UIColor clearColor] CGColor];
    maskLayer.path = [roundedPath CGPath];
    
    return maskLayer;
}

@end
