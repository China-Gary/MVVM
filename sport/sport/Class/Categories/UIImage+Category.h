//
//  UIImage+Category.h
//  sport
//
//  Created by Erha on 2018/6/11.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Category)

/**
 *  vImage api产生高斯模糊图像
 *
 *  @param image 源图片
 *  @param blur  模糊系数
 *
 *  @return 高斯模糊图像image
 */
+ (UIImage *)vGaussianBlurImage:(UIImage *)image blurNumber:(CGFloat)blur;

//截取指定区域图片
+ (UIImage *)viewSnapshot:(UIView *)view withInRect:(CGRect)rect;

//截取屏幕图片
+ (UIImage *)fullScreenshots;

/**
 *  屏幕截图高斯模糊处理
 *
 *  @param blurNumber 模糊参数
 *
 *  @return 高斯模糊图像image
 */
+ (UIImage *)fullScreenshotsGaussianBlur:(CGFloat)blurNumber;

/**
 *  边框绘制虚线
 *
 *  @param size 边框大小
 *  @param color 虚线颜色
 *  @param borderWidth 虚线宽度
 *  @return 高斯模糊图像image
 */
+ (UIImage*)imageWithSize:(CGSize)size borderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth;

/** 截取当前image对象rect区域内的图像 */
- (UIImage *)subImageWithRect:(CGRect)rect;

/** 按给定的方向旋转图片 */
- (UIImage*)rotate:(UIImageOrientation)orient;
/**给图片缩放*/
+ (UIImage *)scaleFromImage:(UIImage *)image withSize:(CGSize)size;
/** 压缩图片*/
+ (UIImage *)thumbnailWithImageWithoutScale:(UIImage *)image withSize:(CGSize)size;
/** 生成二维码*/
+ (UIImage *)qrImageForString:(NSString *)string imageSize:(CGFloat)Imagesize logoImageSize:(CGFloat)waterImagesize;

@end
