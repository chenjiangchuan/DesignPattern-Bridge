//
//  WMVDecoding.m
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "WMVDecoding.h"

@implementation WMVDecoding

- (id)decodingWithOrigin:(id)orginData {
    NSLog(@"WMV视频解码开始...");
    sleep(2);
    NSLog(@"WMV视频解码完成...");
    return @"解码WMV后的数据";
}

@end
