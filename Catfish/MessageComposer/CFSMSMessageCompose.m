//
//  CFSMSMessageCompose.m
//  Catfish
//
//  Created by Jairo Junior on 12/11/13.
//  Copyright (c) 2013 Sook. All rights reserved.
//

#import "CFSMSMessageCompose.h"
#import "CFStringConstants.h"
#import "NSString+CFLocalized.h"

@implementation CFSMSMessageCompose

- (id)initWithViewController:(UIViewController*)viewController
                    delegate:(id<CFSMSMessageComposeDelegate>)delegate
{
    self = [super init];
    if (self) {
        _viewController = viewController;
        _delegate = delegate;
    }
    return self;
}

- (void)showSMSPickerWithRecipients:(NSArray*)toRecipients
                        bodyMessage:(NSString*)bodyMessage
{
    // You must check that the current device can send SMS messages before you
    // attempt to create an instance of MFMessageComposeViewController.  If the
    // device can not send SMS messages,
    // [[MFMessageComposeViewController alloc] init] will return nil.  Your app
    // will crash when it calls -presentViewController:animated:completion: with
    // a nil view controller.
    if ([MFMessageComposeViewController canSendText]) {
        [self displaySMSComposerSheetWithRecipients:toRecipients bodyMessage:bodyMessage];
    } else {
        [_delegate didFinishSMSMessageComposeWithResult:MessageComposeResultFailed resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerSMSDeviceNotConfigured]];
    }
}

- (void)displaySMSComposerSheetWithRecipients:(NSArray*)toRecipients
                                  bodyMessage:(NSString*)bodyMessage
{
	MFMessageComposeViewController *picker = [[MFMessageComposeViewController alloc] init];
	picker.messageComposeDelegate = self;

    // You can specify one or more preconfigured recipients.  The user has
    // the option to remove or add recipients from the message composer view
    // controller.
    picker.recipients = toRecipients;
    
    // You can specify the initial message text that will appear in the message
    // composer view controller.
    picker.body = bodyMessage;
    
	[_viewController presentViewController:picker animated:YES completion:NULL];
}

// -------------------------------------------------------------------------------
//	messageComposeViewController:didFinishWithResult:
//  Dismisses the message composition interface when users tap Cancel or Send.
//  Proceeds to update the feedback message field with the result of the
//  operation.
// -------------------------------------------------------------------------------
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller
                 didFinishWithResult:(MessageComposeResult)result
{
	// Notifies users about errors associated with the interface
	switch (result)
	{
		case MessageComposeResultCancelled:
            [_delegate didFinishSMSMessageComposeWithResult:result resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerSMSSendingCanceled]];
			break;
		case MessageComposeResultSent:
            [_delegate didFinishSMSMessageComposeWithResult:result resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerSMSSent]];
			break;
		case MessageComposeResultFailed:
            [_delegate didFinishSMSMessageComposeWithResult:result resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerSMSSendingFailed]];
			break;
		default:
            [_delegate didFinishSMSMessageComposeWithResult:result resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerSMSNotSent]];
			break;
	}
    
	[_viewController dismissViewControllerAnimated:YES completion:NULL];
}

@end
