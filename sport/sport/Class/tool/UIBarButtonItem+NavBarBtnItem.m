//
//  UIBarButtonItem+NavBarBtnItem.m
//  
//
//  Created by ibokan on 16/6/30.
//  Copyright © 2016年 Chen Jie. All rights reserved.
//

#import "UIBarButtonItem+NavBarBtnItem.h"

@implementation UIBarButtonItem (NavBarBtnItem)

+(instancetype)itemWithFrame:(CGRect)frame
                    andImage:(NSString *)image
                    andTitle:(NSString*)title
                     andFont:(CGFloat)font
               andTitleColor:(UIColor*)titleColor
                      target:(id)target
                      action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    if (image) {
        [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    }
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    return [[self alloc] initWithCustomView:button];
}

+(instancetype)itemRectWithFrame:(CGRect)frame
                    andImage:(NSString *)image
                      target:(id)target
                      action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setAdjustsImageWhenHighlighted:NO];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    return [[self alloc] initWithCustomView:button];
}

@end
