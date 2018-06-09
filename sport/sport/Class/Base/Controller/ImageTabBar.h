//
//  ImageTabBar.h
//  sport
//
//  Created by Erha on 2018/6/7.
//  Copyright © 2018年 Erha. All rights reserved.
//自定义只是图片的tabbar

#import <UIKit/UIKit.h>
@protocol ImgaeTabBarDelegate <NSObject>

- (void)specailButtonClickAction;

@end
@interface ImageTabBar : UITabBar
@property (nonatomic, weak) id<ImgaeTabBarDelegate> delegate;
@end
