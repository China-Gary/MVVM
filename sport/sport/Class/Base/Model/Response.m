//
//  Response.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "Response.h"

@implementation Response
- (instancetype)initWithDict:(NSDictionary *)dict {
    NSError *error = nil;
    self =  [self initWithDictionary:dict error:&error];
    
    //这里写如果需要登录的界面,,,,没有登录跳转到登录,发通知
    //    NSString *status = [[NSUserDefaults standardUserDefaults] objectForKey:@"LoginAlertShow"];
    //    if (![status isEqualToString:@"1"]) {
    //        if ([self.code isEqualToString:@"110"] || [self.code isEqualToString:@"302"] ) {//未登录
    //            [[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"LoginAlertShow"];
    //            [[NSNotificationCenter defaultCenter] postNotificationName:LOGIN_AGAIN object:@{@"code":self.code}];
        
    return self;
}
@end
