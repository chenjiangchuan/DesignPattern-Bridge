//
//  MPEGDecoding.m
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "MPEGDecoding.h"

@implementation MPEGDecoding

- (id)decodingWithOrigin:(id)orginData {
    NSLog(@"MPEG视频解码开始...");
    sleep(2);
    NSLog(@"MPEG视频解码完成...");
    return @"解码MPEG后的数据";
}

@end
