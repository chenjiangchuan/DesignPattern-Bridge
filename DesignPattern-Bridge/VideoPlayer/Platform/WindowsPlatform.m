//
//  WindowsPlatform.m
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "WindowsPlatform.h"

@implementation WindowsPlatform

- (void)executeCommand:(VideoCommandType)aVideoCommandType videoData:(id)aVideoData {
    NSString *command = [Command convertToString:aVideoCommandType];
    NSLog(@"在Ｗindows平台执行<%@>操作，数据为：%@", command, aVideoData);
}

@end
