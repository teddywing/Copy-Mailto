//
//  DefaultURLHandler.m
//  CopyMailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import "DefaultURLHandler.h"

@implementation DefaultURLHandler

//LSSetDefaultHandlerForURLScheme();
+ (void)saveDefaultURLHandler {
    CFStringRef mailto = CFStringCreateWithCString(
        kCFAllocatorDefault,
        "mailto",
        kCFStringEncodingUTF8
    );

    CFStringRef bundle_identifier = LSCopyDefaultHandlerForURLScheme(mailto);
    NSLog(@"%@", bundle_identifier);

    CFRelease(mailto);
    CFRelease(bundle_identifier);
}

@end