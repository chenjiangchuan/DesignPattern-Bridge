//
//  RMVBDecoding.m
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "RMVBDecoding.h"

@implementation RMVBDecoding

- (id)decodingWithOrigin:(id)orginData {
    NSLog(@"RMVB视频解码开始...");
    sleep(2);
    NSLog(@"RMVB视频解码完成...");
    return @"解码RMVB后的数据";
}

@end
