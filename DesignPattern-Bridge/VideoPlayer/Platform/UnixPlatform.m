//
//  UnixPlatform.m
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "UnixPlatform.h"

@implementation UnixPlatform

- (void)executeCommand:(VideoCommandType)aVideoCommandType videoData:(id)aVideoData {
    NSString *command = [Command convertToString:aVideoCommandType];
    NSLog(@"在Unix平台执行<%@>操作，数据为：%@", command, aVideoData);
}

@end
