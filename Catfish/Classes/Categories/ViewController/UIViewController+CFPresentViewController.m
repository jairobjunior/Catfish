//
//  CFUINavigationItemButton.m
//  Catfish
//
//  Created by Jairo Junior on 11/28/14.
//  Copyright (c) 2014 Sook. All rights reserved.
//

#import "UIViewController+CFPresentViewController.h"

@implementation UIViewController (CFPresentViewController)

- (void)presentViewControllerAnimatedWithCloseButtonOnRightSide:(UIViewController*)viewController
{
    [viewController addCloseBarButtonItemOnRightSide];
    UIViewController *rootNavigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    [self presentViewController:rootNavigationController animated:YES completion:nil];
}

@end
