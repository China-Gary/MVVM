//
//  UIViewController+AddMyMethod.h
//  SportNews
//
//  Created by 深圳快优网络服务有限公司 on 2017/12/15.
//  Copyright © 2017年 KuaiYou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (AddMyMethod)
/**
 *  设置navigationg右边按钮
 *
 *  @param image 图片
 *  @param action 相应方法
 */
- (void)setNavigationItemRightButton:(nullable NSString *)image action:(nullable SEL)action;
/**
 *  设置navigationg右边按钮
 *
 *  @param title 文本
 *  @param action 相应方法
 *  @param color 颜色
 */
-(UIButton *_Nonnull)setNavigationItemRightButtonWithTitle:(nullable NSString *)title action:(_Nonnull SEL)action color:(UIColor *)color;
/**
 *  设置navigationg左边按钮
 *
 *  @param image 图片
 *  @param action 相应方法
 */
- (void)setNavigationItemLeftButton:(nullable NSString *)image action:(nullable SEL)action;
/**
 *  设置navigationg左边按钮
 *
 *  @param title 文本
 *  @param action 相应方法
 *  @param color 颜色
 */
-(UIButton*)setNavigationItemLeftButtonWithTitle:(NSString *)title action:(_Nonnull SEL)action color:(UIColor *)color;
/**
 *  自定义navigationg中间title
 *
 *  @param title 要显示的title
 */
- (void)setNavigationCenterTitleItem:(nullable NSString *)title;
/**
 *  设置navigationg中间image
 *
 *  @param imageName 图片名
 */
- (void)setNavigationCenterImageView:(nullable NSString *)imageName;

/**
 *  设置navigationg自定义按钮
 *
 *  @param title 按钮文本
 *  @param action 相应方法
 *  @param color 颜色
 */

@end
