//
//  CFMailCompose.m
//  Catfish
//
//  Created by Jairo Junior on 12/12/13.
//  Copyright (c) 2013 Sook. All rights reserved.
//

#import "CFMailMessageCompose.h"
#import "CFStringConstants.h"
#import "NSString+CFLocalized.h"

@implementation CFMailMessageCompose

- (id)initWithViewController:(UIViewController*)viewController
                    delegate:(id<CFMailMessageComposeDelegate>)delegate
{
    self = [super init];
    if (self) {
        _viewController = viewController;
        _delegate = delegate;
    }
    return self;
}

- (void)showMailPickerWithRecipients:(NSArray*)toRecipients subject:(NSString*)subject
                         bodyMessage:(NSString*)bodyMessage
{
    // You must check that the current device can send email messages before you
    // attempt to create an instance of MFMailComposeViewController.  If the
    // device can not send email messages,
    // [[MFMailComposeViewController alloc] init] will return nil.  Your app
    // will crash when it calls -presentViewController:animated:completion: with
    // a nil view controller.
    if ([MFMailComposeViewController canSendMail]) {
        [self displayMailComposerSheetWithRecipients:toRecipients subject:subject bodyMessage:bodyMessage];
    } else {
        [_delegate didFinishMailMessageComposeWithResult:MFMailComposeResultFailed resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerMailDeviceNotConfigured]];
    }
}

- (void)displayMailComposerSheetWithRecipients:(NSArray*)toRecipients subject:(NSString*)subject
                                  bodyMessage:(NSString*)bodyMessage
{
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
	
	[picker setSubject:subject];
	
	// Set up recipients
//	NSArray *toRecipients = recipients;
//	NSArray *ccRecipients = [NSArray arrayWithObjects:@"second@example.com", @"third@example.com", nil];
//	NSArray *bccRecipients = [NSArray arrayWithObject:@"fourth@example.com"];
	
	[picker setToRecipients:toRecipients];
//	[picker setCcRecipients:ccRecipients];
//	[picker setBccRecipients:bccRecipients];
	
	// Attach an image to the email
//	NSString *path = [[NSBundle mainBundle] pathForResource:@"rainy" ofType:@"jpg"];
//	NSData *myData = [NSData dataWithContentsOfFile:path];
//	[picker addAttachmentData:myData mimeType:@"image/jpeg" fileName:@"rainy"];
	
	// Fill out the email body text
	[picker setMessageBody:bodyMessage isHTML:NO];
	
	[_viewController presentViewController:picker animated:YES completion:NULL];
}

#pragma mark - Delegate Methods

// -------------------------------------------------------------------------------
//	mailComposeController:didFinishWithResult:
//  Dismisses the email composition interface when users tap Cancel or Send.
//  Proceeds to update the message field with the result of the operation.
// -------------------------------------------------------------------------------
- (void)mailComposeController:(MFMailComposeViewController*)controller
          didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
	// Notifies users about errors associated with the interface
	switch (result)
	{
		case MFMailComposeResultCancelled:
            [_delegate didFinishMailMessageComposeWithResult:result resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerMailSendingCanceled]];
			break;
		case MFMailComposeResultSaved:
            [_delegate didFinishMailMessageComposeWithResult:result resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerMailSaved]];
			break;
		case MFMailComposeResultSent:
            [_delegate didFinishMailMessageComposeWithResult:result resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerMailSent]];
			break;
		case MFMailComposeResultFailed:
            [_delegate didFinishMailMessageComposeWithResult:result resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerMailSendingFailed]];
			break;
		default:
            [_delegate didFinishMailMessageComposeWithResult:result resultDescription:[NSString getStringLocalizedWithKey:kCFMessageComposerMailNotSent]];
			break;
	}
    
	[_viewController dismissViewControllerAnimated:YES completion:NULL];
}

@end
