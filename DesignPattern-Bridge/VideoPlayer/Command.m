//
//  Command.m
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "Command.h"

@implementation Command

+ (NSString*)convertToString:(VideoCommandType)aVideoCommandType {
    NSString *result = nil;
    
    switch (aVideoCommandType) {
        case VideoCommandTypePlay:
            result = @"播放";
            break;
            
        case VideoCommandTypeStop:
            result = @"停止";
            break;
            
        case VideoCommandTypeResume:
            result = @"开始";
            break;
            
        case VideoCommandTypeRestart:
            result = @"重新播放";
            break;
    }
    return result;
}

@end
