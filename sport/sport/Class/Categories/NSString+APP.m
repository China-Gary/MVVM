//
//  NSString+APP.m
//  sport
//
//  Created by Erha on 2018/6/6.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "NSString+APP.h"

@implementation NSString (APP)
- (NSString *)md5HexDigest
{
    const char* str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), result);
    
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    for (NSInteger i=0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02x", result[i]];
    }
    return ret;
    
}

+ (NSString *) randomStr : (NSInteger) length {
    NSMutableString *str = [NSMutableString stringWithCapacity:length];
    for (int i = 0; i < length; i++) {
        [str appendString:[NSString stringWithFormat:@"%d",arc4random()%10]];
    }
    return str;
}
@end
