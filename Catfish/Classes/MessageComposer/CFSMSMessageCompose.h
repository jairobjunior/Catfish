//
//  CFSMSMessageCompose.h
//  Catfish
//
//  Created by Jairo Junior on 12/11/13.
//  Copyright (c) 2013 Sook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <MessageUI/MessageUI.h>

@protocol CFSMSMessageComposeDelegate <NSObject>

- (void)didFinishSMSMessageComposeWithResult:(MessageComposeResult)result
                            resultDescription:(NSString*)resultDescription;
@end

@interface CFSMSMessageCompose : NSObject<MFMessageComposeViewControllerDelegate>

@property (nonatomic, assign) id<CFSMSMessageComposeDelegate> delegate;

@property (nonatomic, strong) UIViewController* viewController;

- (id)initWithViewController:(UIViewController*)viewController
                    delegate:(id<CFSMSMessageComposeDelegate>)delegate;

- (void)showSMSPickerWithRecipients:(NSArray*)toRecipients
                        bodyMessage:(NSString*)bodyMessage;

@end
