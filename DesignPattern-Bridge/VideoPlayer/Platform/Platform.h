//
//  Platform.h
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface Platform : NSObject

- (void)executeCommand:(VideoCommandType)aVideoCommandType videoData:(id)aVideoData;

@end
