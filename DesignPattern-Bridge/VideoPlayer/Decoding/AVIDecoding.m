//
//  AVIDecoding.m
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "AVIDecoding.h"

@implementation AVIDecoding

- (id)decodingWithOrigin:(id)orginData {
    NSLog(@"AVI视频解码开始...");
    sleep(2);
    NSLog(@"AVI视频解码完成...");
    return @"解码AVI后的数据";
}

@end
