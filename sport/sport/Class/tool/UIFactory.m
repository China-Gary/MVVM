//
//  UIFactory.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "UIFactory.h"

@implementation UIFactory
//table适配ios11系统
+ (void)adjustIOSUI:(UITableView *)tableView{
    tableView.estimatedRowHeight =0;
    tableView.estimatedSectionHeaderHeight =0;
    tableView.estimatedSectionFooterHeight =0;
    if (@available(iOS 11.0, *)) {
        tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
}

#pragma mark ------------------------ 计算富文本高度
/**
 计算富文本高度
 
 @param content 文本
 @param fontSize 大小
 @param width 宽度
 @return 高度
 */
+ (CGFloat)attributeHeight:(NSString *)content withTextFontSize:(CGFloat)fontSize withWidth:(CGFloat)width
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = 10;// 段落高度
    NSMutableAttributedString *attributes = [[NSMutableAttributedString alloc] initWithString:content];
    [attributes addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:fontSize] range:NSMakeRange(0, content.length)];
    [attributes addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, content.length)];
    CGSize attSize = [attributes boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size;
    return attSize.height;
}

#pragma mark ---------------------------------------------- 计算文本宽度
+ (CGFloat)widthWithLable:(NSString*)txtStr andFont:(CGFloat)font andHeight:(CGFloat)height
{
    return [txtStr boundingRectWithSize:CGSizeMake(10000, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]} context:nil].size.width;
}

#pragma mark ---------------------------------------------- 计算文本高度
+ (CGFloat)heightWithLable:(NSString*)txtStr andFont:(CGFloat)font andWidth:(CGFloat)width
{
    return [txtStr boundingRectWithSize:CGSizeMake(width, 10000) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:font]} context:nil].size.height;
}

#pragma mark -data转字符串
-(NSString *)stringWithData:(NSData*)received {
    return [[NSString alloc]initWithData:received encoding:NSUTF8StringEncoding];
}
#pragma mark -data转字典
-(NSMutableDictionary *)dicWithData:(NSData*)received{
    return [NSJSONSerialization JSONObjectWithData:received options:NSJSONReadingMutableLeaves error:nil];
}


@end
