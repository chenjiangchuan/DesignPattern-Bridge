//
//  VideoPlayer.m
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "VideoPlayer.h"
#import "Decoding.h"
#import "Platform.h"

@implementation VideoPlayer

- (void)executeCommand:(VideoCommandType)aVideoCommandType videoOriginData:(id)aVideoOriginData {
    id decodingData = nil;
    // 播放操作，先解码
    if (aVideoCommandType == VideoCommandTypePlay) {
        decodingData = [self.decoding decodingWithOrigin:aVideoOriginData];
    }
    // 再平台上执行命令
    [self.platform executeCommand:aVideoCommandType videoData:decodingData];
}

@end
