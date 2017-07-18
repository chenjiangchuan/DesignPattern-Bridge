//
//  JCVideoPlayer.h
//  DesignPattern-Bridge
//
//  Created by chenjiangchuan on 2017/7/18.
//  Copyright © 2017年 chenjiangchuan. All rights reserved.
//

#import "VideoPlayer.h"

@interface JCVideoPlayer : VideoPlayer

- (void)playVideo:(NSString *)videoPath;

- (void)stopVideo;

- (void)resumeVideo;

- (void)restartVideo;

@end
