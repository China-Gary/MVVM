//
//  BaseModel.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel
- (instancetype)initWithDict:(NSDictionary *)dict {
    NSError *error = nil;
    self =  [self initWithDictionary:dict error:&error];
    
    //这里写如果需要登录的界面,,,,没有登录跳转到登录,发通知
    //    NSString *status = [[NSUserDefaults standardUserDefaults] objectForKey:@"LoginAlertShow"];
    //    if (![status isEqualToString:@"1"]) {
    //        if ([self.code isEqualToString:@"110"] || [self.code isEqualToString:@"302"] ) {//未登录
    //            [[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"LoginAlertShow"];
    //            [[NSNotificationCenter defaultCenter] postNotificationName:LOGIN_AGAIN object:@{@"code":self.code}];
    
    if (![dict isKindOfClass:[NSArray class]]) {//数组类型不需要
        //判断为空的情况
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:dict];
        NSArray *valueArray= [dic allKeys];
        for (NSString *key in valueArray) {
            if ([[dic objectForKey:key]isEqual:[NSNull null]]) {
                [dic setObject:@"无数据" forKey:key];
            }
        }
        [super setValuesForKeysWithDictionary:dic];
    }
    
    return self;
}
@end
