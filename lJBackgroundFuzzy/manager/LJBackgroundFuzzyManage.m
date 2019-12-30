//
//  LJBackgroundFuzzyManage.m
//  lJBackgroundFuzzy
//
//  Created by jiejie on 2019/12/30.
//  Copyright © 2019 jiejie. All rights reserved.
//

#import "LJBackgroundFuzzyManage.h"
#import "WindowAboveBackgroundView.h"

@interface LJBackgroundFuzzyManage()

@property (nonatomic,strong)WindowAboveBackgroundView *bgView;

@end


@implementation LJBackgroundFuzzyManage

+ (LJBackgroundFuzzyManage *)sharedBackgroundFuzzyManage {
    static dispatch_once_t onceToken;
    __strong static id _sharedFuzzyManage = nil;
    dispatch_once(&onceToken, ^{
        _sharedFuzzyManage = [[LJBackgroundFuzzyManage alloc]init];
    });
    return _sharedFuzzyManage;
}

- (void)start {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appWillResignActive) name:UIApplicationWillResignActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appDidEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appWillEnterForeground) name:UIApplicationWillEnterForegroundNotification object:nil];
}

- (void)appWillResignActive {
    //应用程序挂起(有电话进来或者锁屏)
#pragma mark - 回到后台的时候截取当前屏幕
    [[Screenshots sharedScreenshots] dataWithScreenshotInPNGFormat];
}

- (void)appDidEnterBackground {
    //应用程序进入后台
    self.bgView = [WindowAboveBackgroundView new];
    [self.bgView show];
}

- (void)appWillEnterForeground {
    //应用程序将要进入前台
    [self.bgView hidden];
}

@end
