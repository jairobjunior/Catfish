//
//  UIAlertView+Utility.m
//  BoostKit
//
//  Created by Jacques Pienaar on 24/2/12.
// 
//
#import "UIAlertView+Utility.h"

@interface UIAlertViewHandler : NSObject<UIAlertViewDelegate>

@property (assign, nonatomic) id target;
@property (assign, nonatomic) SEL successAction;

@end

@implementation UIAlertViewHandler

- (id)initWithTarget:(id)target successAction:(SEL)successAction
{
    self = [super init];
    if (self) {
        _target = target;
        _successAction = successAction;
    }
    return self;
}

- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {

    if (buttonIndex == 0) {

    } else if (buttonIndex == 1) {
        @synchronized(self) {
            [NSTimer scheduledTimerWithTimeInterval:0.0f target:_target selector:_successAction userInfo:nil repeats:NO];
            [UIAlertView resetAlertViewHandler];
        }
    }
}

@end

@implementation UIAlertView (Utility)

static UIAlertViewHandler *alertViewHandler = nil;

+ (UIAlertView *)alertViewFromError:(NSError *)error {
	
	UIAlertView *result = [[UIAlertView alloc] initWithTitle:[error localizedFailureReason]
													  message:[error localizedDescription]
													 delegate:nil
											cancelButtonTitle:NSLocalizedString(@"OK", @"")
											otherButtonTitles:nil];
	return result;
}

+ (void)showWithTitle:(NSString *)title message:(NSString *)message {

	[[[UIAlertView alloc] initWithTitle:title
													 message:message
													delegate:nil
										   cancelButtonTitle:NSLocalizedString(@"OK", @"")
										   otherButtonTitles:nil] show];
}

+ (void)showWithMessage:(NSString *)message {
	[UIAlertView showWithTitle:nil message:message];
}

+ (void)showNonClosebleMessage:(NSString *)message {
	[[[UIAlertView alloc] initWithTitle:nil 
                                 message:message 
                                delegate:nil 
                       cancelButtonTitle:nil 
                       otherButtonTitles:nil] show];
}

+ (void)showWithTitle:(NSString *)title message:(NSString *)message successButtonTitle:(NSString *)successButtonTitle target:(id)target successAction:(SEL)successAction {

    alertViewHandler = [[UIAlertViewHandler alloc] initWithTarget:target successAction:successAction];

    [[[UIAlertView alloc] initWithTitle:title
                               message:message
                                delegate:alertViewHandler
                                cancelButtonTitle:NSLocalizedString(@"Cancel", @"")
                                otherButtonTitles:successButtonTitle, nil] show];
}

+ (void)resetAlertViewHandler
{
    alertViewHandler = nil;
}

@end
