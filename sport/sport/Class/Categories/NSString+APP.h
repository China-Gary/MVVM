//
//  NSString+APP.h
//  sport
//
//  Created by Erha on 2018/6/6.
//  Copyright © 2018年 Erha. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonDigest.h>
@interface NSString (APP)
//MD5串
- (NSString *)md5HexDigest;

//生成随机数字符串
+ (NSString *) randomStr : (NSInteger) length;

/**邮箱*/
+ (BOOL)isEmail:(NSString *)email;

/**是否手机号码*/
+ (BOOL)isPhone:(NSString *)phone;

+ (BOOL)isTelephone:(NSString *)phone;

@end
