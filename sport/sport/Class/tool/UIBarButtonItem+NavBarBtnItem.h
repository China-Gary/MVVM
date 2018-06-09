//
//  UIBarButtonItem+NavBarBtnItem.h
//  
//
//  Created by ibokan on 16/6/30.
//  Copyright © 2016年 Chen Jie. All rights reserved.
//  导航栏按钮封装

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (NavBarBtnItem)
/**
 *  导航栏按钮封装
 *
 *  @param image      按钮图片
 *  @param title      标题
 *  @param frame      位置
 *  @param titleColor 标题颜色
 *  @param target     目标
 *  @param action     动作
 *
 *  @return 导航栏按钮
 */
+(instancetype)itemWithFrame:(CGRect)frame
                    andImage:(NSString *)image
                    andTitle:(NSString*)title
                     andFont:(CGFloat)font
               andTitleColor:(UIColor*)titleColor
                      target:(id)target
                      action:(SEL)action;

+(instancetype)itemRectWithFrame:(CGRect)frame
                        andImage:(NSString *)image
                          target:(id)target
                          action:(SEL)action;
@end
