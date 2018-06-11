//
//  ScreenSize.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#ifndef ScreenSize_h
#define ScreenSize_h
///------ 应用程序版本号version ------
#define kAppVersion ([[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"])
///------ iOS系统版本号 ------
#define iOS_Version ([[[UIDevice currentDevice] systemVersion] floatValue])
/********************************屏幕定制*******************************************/
#define kScreenWidth             ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight            ([UIScreen mainScreen].bounds.size.height)
#define SafeAreaTopHeight         (kScreenHeight == 812.0 ? 88 : 64)
#define kSafeAreaBottomHeight     (kScreenHeight == 812.0 ? 34 : 0)//34
#define kStatusHeight             (kScreenHeight == 812.0 ? 44 : 20)
#define NavigationBarHeight  44.f
// Tabbar height.
#define  kTabbarHeight         (k_iPhoneX ? (49.f+34.f) : 49.f)
// iPhone X
#define  k_iPhoneX (kScreenWidth == 375.f && kScreenHeight == 812.f ? YES : NO)
//获取appdelegate
#define kAppDelegate               ((AppDelegate *)([UIApplication sharedApplication].delegate))
//获取根视图
#define kCurrentKeyWindow    [UIApplication sharedApplication].keyWindow

/// 高度系数 812.0 是iPhoneX的高度尺寸，667.0表示是iPhone 6 的高度
#define kHeight_Iphone6_Scale  kScreenHeight /667.0
//屏幕宽度相对iPhone6屏幕宽度的比例
#define kWidth_Iphone6_Scale    [UIScreen mainScreen].bounds.size.width/375.0

//根据iphone6尺寸算高度
#define GetScaleWidth(width)  width * kHeight_Iphone6_Scale
#define GetAdaptationWidth(width)  width * kWidth_Iphone6_Scale

#define ViewWidth               (self.frame.size.width)
#define ViewHeight              (self.frame.size.height)

#define iPhone4_width 320
#define iPhone5_width 320
#define iPhone6_width 375
#define iPhone6p_width 414


#define iPhone4_Height 480
#define iPhone5_Height 568
#define iPhone6_Height 667
#define iPhone6P_Height 736


#endif /* ScreenSize_h */
