//
//  QuitButton.m
//  CopyMailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import "QuitButton.h"

@implementation QuitButton

// Quit the application on "q" or "Escape"
- (void)keyDown:(NSEvent *)theEvent
{
    if ([[theEvent characters] isEqualToString:@"q"] ||
        [theEvent keyCode] == kVK_Escape) {
        [NSApp terminate:self];
    }
}

@end
