//
//  CFMailCompose.h
//  Catfish
//
//  Created by Jairo Junior on 12/12/13.
//  Copyright (c) 2013 Sook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <MessageUI/MessageUI.h>

@protocol CFMailMessageComposeDelegate <NSObject>

- (void)didFinishMailMessageComposeWithResult:(MFMailComposeResult)result
                           resultDescription:(NSString*)resultDescription;
@end

@interface CFMailMessageCompose : NSObject<MFMailComposeViewControllerDelegate>

@property (nonatomic, assign) id<CFMailMessageComposeDelegate> delegate;

@property (nonatomic, strong) UIViewController* viewController;

- (id)initWithViewController:(UIViewController*)viewController
                    delegate:(id<CFMailMessageComposeDelegate>)delegate;

- (void)showMailPickerWithRecipients:(NSArray*)toRecipients subject:(NSString*)subject
                         bodyMessage:(NSString*)bodyMessage;

@end
