//
//  AppDelegate.m
//  Copy Mailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 Teddy Wing
//
//  This file is part of Copy Mailto.
//
//  Copy Mailto is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Copy Mailto is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Copy Mailto. If not, see <https://www.gnu.org/licenses/>.
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
