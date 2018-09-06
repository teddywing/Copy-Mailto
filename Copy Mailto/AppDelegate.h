//
//  AppDelegate.h
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

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSWindow *_window;
    IBOutlet NSTextField *_email_address;
}

- (void)handleURLEvent:(NSAppleEventDescriptor *)event
    withReplyEvent: (NSAppleEventDescriptor *)replyEvent;
- (IBAction)copyEmailToClipboard:(id)sender;

@end
