//
//  NSDate+Utils.h
//  sport
//
//  Created by Erha on 2018/6/6.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Utils)
//获取当前date
+ (NSDate *)getNowDate;
//获取时间戳:1528272445951.713135
+(NSString *) getTimetamp;
//YYYY-MM-dd-EEEE-HH:mm:ss
+ (NSString *)getCurrentDataWithDateFormate:(NSString *)formate;
//将任意NSDate格式化
+ (NSString *)dateFormattingWithDate:(NSDate *)date toFormate:(NSString *)formate;
//将任意字符串转化成NSDate
+(NSDate *)dateWithString:(NSString *)timeStr;
//获取当天0点时间
+ (NSDate *)returnToDay0Clock;
//获取当天24点时间
+ (NSDate *)returnToDay24Clock;
//获取当前秒数
+ (long long)getCurrentDateSecond;
//NSDate转秒
+ (long long)dateTosecond:(NSDate *)date;
//秒转NSDate
+ (NSDate *)secondToDate:(long long)second;
//是否是12小时制; YES:12小时制 / NO:24小时制
+ (BOOL)is12HourSystem;

+ (NSString *)dateDisplayResult:(NSDate*)date;
+(NSComparisonResult)compareDateDifferenceDate1:(NSDate *)date1 date2:(NSDate *)date2;
@end
