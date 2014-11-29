//
//  UIImage+CFColor.h
//  Catfish
//
//  Created by Jairo Junior on 12/12/13.
//  Copyright (c) 2013 Sook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CFRoundify)

- (void)addRoundedCorners:(UIRectCorner)corners withRadii:(CGSize)radii;
- (CALayer*)maskForRoundedCorners:(UIRectCorner)corners withRadii:(CGSize)radii;

@end
