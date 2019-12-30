//
//  LJBackgroundFuzzyManage.h
//  lJBackgroundFuzzy
//
//  Created by jiejie on 2019/12/30.
//  Copyright © 2019 jiejie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LJBackgroundFuzzyManage : NSObject

+ (LJBackgroundFuzzyManage *)sharedBackgroundFuzzyManage;

- (void)start;

@end

NS_ASSUME_NONNULL_END
