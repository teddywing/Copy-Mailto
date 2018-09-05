//
//  main.m
//  CopyMailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "DefaultURLHandler.h"

int main(int argc, const char * argv[]) {
    [DefaultURLHandler saveDefaultURLHandler];
    return NSApplicationMain(argc, argv);
}
