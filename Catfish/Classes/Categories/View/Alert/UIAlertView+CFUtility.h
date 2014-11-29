//
//  UIAlertView+Utility.h
//
//  Created by Jacques Pienaar on 24/2/12.
// 
//

@interface UIAlertView (CFUtility)

/**
  * Uses [error localizedFailureReason] as UIAlertView title and [error localizedDescription] as its message.
  * 
  * @remarks
  *		The UIAlertView creation method lets you keep the dialog localized in case you provide translation
  *		for "OK" string in your Localizable.strings file.
  */
+ (UIAlertView *)alertViewFromError:(NSError *)error;

/**
  * There is often need to just show UIAlertView with a custom message and OK button without providing a delegate
  * or any custom buttons.
  * 
  * @remarks
  *		The UIAlertView creation method lets you keep the dialog localized in case you provide translation
  *		for "OK" string in your Localizable.strings file.
  */
+ (void)showWithMessage:(NSString *)message;
+ (void)showWithTitle:(NSString *)title message:(NSString *)message;

/**
  * Shows AlertView with no Close or OK button
  */
+ (void)showNonClosebleMessage:(NSString *)message;

+ (void)showWithTitle:(NSString *)title message:(NSString *)message successButtonTitle:(NSString *)successButtonTitle target:(id)target successAction:(SEL)successAction;

+ (void)resetAlertViewHandler;

@end
