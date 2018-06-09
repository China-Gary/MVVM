//
//  UIFactory.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIFactory : NSObject
+ (void)adjustIOSUI:(UITableView *)tableView;
/**
 计算富文本高度
 
 @param content 文本
 @param fontSize 大小
 @param width 宽度
 @return 高度
 */
+ (CGFloat)attributeHeight:(NSString *)content withTextFontSize:(CGFloat)fontSize withWidth:(CGFloat)width;
/**
 计算富文本高度
 
 @param txtStr 文本
 @param font 大小
 @param height 高度
 @return 宽度
 */
+ (CGFloat)widthWithLable:(NSString*)txtStr andFont:(CGFloat)font andHeight:(CGFloat)height;
/**
 计算富文本高度
 
 @param txtStr 文本
 @param font 大小
 @param width 宽度
 @return 高度
 */
+ (CGFloat)heightWithLable:(NSString*)txtStr andFont:(CGFloat)font andWidth:(CGFloat)width;
/**
 data转字符串
 
 @param received data
 @return 字符串
 */
-(NSString *)stringWithData:(NSData*)received;
/**
 data转字典
 
 @param received data
 @return 字典
 */
-(NSMutableDictionary *)dicWithData:(NSData*)received;

@end
