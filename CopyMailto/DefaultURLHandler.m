//
//  DefaultURLHandler.m
//  CopyMailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import "DefaultURLHandler.h"

@implementation DefaultURLHandler

+ (OSStatus)setDefaultURLHandler {
    CFStringRef scheme = (CFStringRef)@"mailto";
    CFStringRef bundle_identifier = (__bridge CFStringRef)[[NSBundle mainBundle] bundleIdentifier];
    NSLog(@"%@", scheme);
    NSLog(@"%@", bundle_identifier);

    OSStatus status = LSSetDefaultHandlerForURLScheme(scheme, bundle_identifier);
    NSLog(@"%d", status);

    CFRelease(scheme);

    return status;
}

+ (void)saveDefaultURLHandler {
    CFStringRef mailto = (CFStringRef)@"mailto";
    CFStringRef bundle_identifier = LSCopyDefaultHandlerForURLScheme(mailto);
    NSLog(@"%@", bundle_identifier);

    CFRelease(mailto);
    CFRelease(bundle_identifier);
}

@end
