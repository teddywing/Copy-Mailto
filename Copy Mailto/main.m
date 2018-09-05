//
//  main.m
//  Copy Mailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "DefaultURLHandler.h"

int main(int argc, const char * argv[]) {
    if (argc == 2 && strcmp(argv[1], "--set-url-handler") == 0) {
        return [DefaultURLHandler setDefaultURLHandler];
    }

    return NSApplicationMain(argc, argv);
}
