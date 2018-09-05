//
//  AppDelegate.m
//  CopyMailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import "AppDelegate.h"

const NSUInteger MAILTO_INDEX = 7;

@implementation AppDelegate

- (void)applicationWillFinishLaunching:(NSNotification *)aNotification {
    [[NSAppleEventManager sharedAppleEventManager]
        setEventHandler:self
        andSelector:@selector(handleURLEvent:withReplyEvent:)
        forEventClass:kInternetEventClass
        andEventID:kAEGetURL];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)handleURLEvent:(NSAppleEventDescriptor *)event
    withReplyEvent: (NSAppleEventDescriptor *)replyEvent
{
    NSString *url = [[event paramDescriptorForKeyword:keyDirectObject]
        stringValue];
    [_email_address setStringValue:[url substringFromIndex:MAILTO_INDEX]];
}

- (IBAction)copyEmailToClipboard:(id)sender
{
    NSPasteboard *pasteboard = [NSPasteboard generalPasteboard];
    [pasteboard clearContents];
    [pasteboard writeObjects:
        [NSArray arrayWithObject:
            [_email_address stringValue]]];

    [NSApp terminate:self];
}

@end
