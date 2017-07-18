//
//  VideoPlayer.h
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@class Platform, Decoding;

@interface VideoPlayer : NSObject

/** Platform */
@property (strong, nonatomic) Platform *platform;
/** Decoding */
@property (strong, nonatomic) Decoding *decoding;

- (void)executeCommand:(VideoCommandType)aVideoCommandType videoOriginData:(id)aVideoOriginData;

@end
