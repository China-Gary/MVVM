//
//  UtilsMacros.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#ifndef UtilsMacros_h
#define UtilsMacros_h

#define LOGIN_AGAIN @"NOLogin"

// 弱引用
#define Weakself(f) __weak typeof(self) f = self;


#define RGBColor(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);

#endif /* UtilsMacros_h */
