//
//  DefaultURLHandler.h
//  CopyMailto
//
//  Created by tw on 9/5/18.
//  Copyright © 2018 tw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DefaultURLHandler : NSObject

+ (OSStatus)setDefaultURLHandler;
+ (void)saveDefaultURLHandler;

@end
