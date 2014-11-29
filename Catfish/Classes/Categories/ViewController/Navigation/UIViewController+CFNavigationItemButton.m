//
//  CFUINavigationItemButton.m
//  Catfish
//
//  Created by Jairo Junior on 11/28/14.
//  Copyright (c) 2014 Sook. All rights reserved.
//

#import "UIViewController+CFNavigationItemButton.h"

@implementation UIViewController (CFNavigationItemButton)

- (void)addCloseBarButtonItemOnRightSide
{
    UIBarButtonItem *closeButtonBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(didCloseButtonOnRightSideTap:)];
    
    self.navigationItem.rightBarButtonItem = closeButtonBarButtonItem;
}

- (void)didCloseButtonOnRightSideTap:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
