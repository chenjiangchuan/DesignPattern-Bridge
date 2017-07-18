//
//  Command.h
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, VideoCommandType) {
    VideoCommandTypePlay = 1,
    VideoCommandTypeStop,
    VideoCommandTypeResume,
    VideoCommandTypeRestart,
};

@interface Command : NSObject

+ (NSString*)convertToString:(VideoCommandType)aVideoCommandType;

@end
