//
//  UIImage+CFColor.m
//  Catfish
//
//  Created by Jairo Junior on 12/12/13.
//  Copyright (c) 2013 Sook. All rights reserved.
//

#import "UIImage+CFColor.h"

@implementation UIImage (CFColor)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
