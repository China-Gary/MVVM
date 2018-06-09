//
//  UIButton+CS_FixMultiClick.h
//  HealthFemale
//
//  Created by chenjie on 18/6/06.
//  Copyright © 2018年 Erha. All rights reserved.
//  防止按钮重复点击

#import <UIKit/UIKit.h>

@interface UIButton (CS_FixMultiClick)

@property (nonatomic, assign) NSTimeInterval cs_acceptEventInterval; // 重复点击的间隔

@property (nonatomic, assign) NSTimeInterval cs_acceptEventTime;

@end
