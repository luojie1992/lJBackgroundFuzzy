//
//  WindowAboveBackgroundView.h
//  ProjectDemo
//
//  Created by 税鸽飞腾 on 2018/11/12.
//  Copyright © 2018 LWJ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WindowAboveBackgroundView : UIView
- (void)show;
- (void)hidden;

@end



/// UIImage  虚化
@interface UIImage (GaussianBlurImage)
/*
 *image 目标图片
 *blur  模糊图片的程度系数
 */
+ (UIImage *)coreGaussianBlurImage:(UIImage * _Nonnull)image  blurNumber:(CGFloat)blur;

@end




/// 截屏
@interface Screenshots : NSObject

+ (Screenshots *)sharedScreenshots;
- (BOOL)dataWithScreenshotInPNGFormat;
- (UIImage *)readFile;

@end

NS_ASSUME_NONNULL_END
