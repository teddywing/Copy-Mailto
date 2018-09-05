//
//  AppDelegate.h
//  Copy Mailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSWindow *_window;
    IBOutlet NSTextField *_email_address;
}

- (void)handleURLEvent:(NSAppleEventDescriptor *)event
    withReplyEvent: (NSAppleEventDescriptor *)replyEvent;
- (IBAction)copyEmailToClipboard:(id)sender;

@end
