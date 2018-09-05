//
//  DefaultURLHandler.m
//  Copy Mailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import "DefaultURLHandler.h"

@implementation DefaultURLHandler

+ (OSStatus)setDefaultURLHandler {
    CFStringRef scheme = (CFStringRef)@"mailto";
    CFStringRef bundle_identifier = (__bridge CFStringRef)[[NSBundle mainBundle] bundleIdentifier];

    OSStatus status = LSSetDefaultHandlerForURLScheme(scheme, bundle_identifier);

    CFRelease(scheme);

    return status;
}

@end
