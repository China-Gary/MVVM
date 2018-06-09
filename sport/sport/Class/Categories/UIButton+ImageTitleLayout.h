//
//  UIButton+ImageTitleLayout.h
//  sport
//
//  Created by Erha on 2018/6/7.
//  Copyright © 2018年 Erha. All rights reserved.
//自定义按钮上图片和文字的位置,以按钮左上角坐标0,0为原点

#import <UIKit/UIKit.h>

@interface UIButton (ImageTitleLayout)
@property (nonatomic,assign) CGRect titleRect;
@property (nonatomic,assign) CGRect imageRect;
@end
