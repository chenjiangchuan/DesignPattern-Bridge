//
//  JCVideoPlayer.m
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "JCVideoPlayer.h"
#import <objc/runtime.h>

#define LINUX

#ifdef WINDOWS
#import "WindowsPlatform.h"
#elif defined LINUX
#import "LinuxPlatform.h"
#elif defined UNIX
#import "UnixPlatform.h"
#endif

//#import "RMVBDecoding.h"
//#import "MPEGDecoding.h"
//#import "AVIDecoding.h"
//#import "WMVDecoding.h"

@implementation JCVideoPlayer

#pragma mark - Public Method

- (void)playVideo:(NSString *)videoPath {
    
#ifdef WINDOWS
    self.platform = [[WindowsPlatform alloc] init];
#elif defined LINUX
    self.platform = [[LinuxPlatform alloc] init];
#elif defined UNIX
    self.platform = [[UnixPlatform alloc] init];
#endif
    
    NSString *classString = [self vidoType:videoPath];
    Class class = objc_getClass([classString UTF8String]);
    self.decoding = [[class alloc] init];
    
    [super executeCommand:VideoCommandTypePlay videoOriginData:videoPath];
}

- (void)stopVideo {
    [super executeCommand:VideoCommandTypeStop videoOriginData:nil];
}

- (void)resumeVideo {
    [super executeCommand:VideoCommandTypeResume videoOriginData:nil];
}

- (void)restartVideo {
    [super executeCommand:VideoCommandTypeRestart videoOriginData:nil];
}

#pragma mark - Private Method

- (NSString *)vidoType:(NSString *)videoPath {
    NSString *suffix = [[videoPath lastPathComponent] pathExtension];
    if ([suffix caseInsensitiveCompare:@"rmvb"] == NSOrderedSame) {
        return @"RMVBDecoding";
    } else if ([suffix caseInsensitiveCompare:@"mpeg"] == NSOrderedSame) {
        return @"MPEGDecoding";
    } else if ([suffix caseInsensitiveCompare:@"avi"] == NSOrderedSame) {
        return @"AVIDecoding";
    } else if ([suffix caseInsensitiveCompare:@"wmv"] == NSOrderedSame) {
        return @"WMVDecoding";
    } else {
        return @"unknow";
    }
}

@end
