//
//  CFUINavigationItemButton.m
//  Catfish
//
//  Created by Jairo Junior on 11/28/14.
//  Copyright (c) 2014 Sook. All rights reserved.
//

#import "UIPageViewController+CFScrollView.h"

@implementation UIPageViewController (CFScrollView)

- (void)setScrollEnabled:(BOOL)enabled
{
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:[UIScrollView class]]) {
            UIScrollView *scrollView = (UIScrollView*)view;
            [scrollView setScrollEnabled:enabled];
            return;
        }
    }
}

@end
