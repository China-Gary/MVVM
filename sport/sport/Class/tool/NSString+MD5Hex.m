//
//  NSString+MD5Hex.m
//  FJWOEF
//
//  Created by chenjie on 16/8/29.
//  Copyright © 2016年 chenjie. All rights reserved.
//

#import "NSString+MD5Hex.h"
#import <CommonCrypto/CommonDigest.h>
@implementation NSString (MD5Hex)

-(NSString *)getMD5HexDigest
{
    const char *original_str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, (CC_LONG)strlen(original_str), result);
    NSMutableString *hash = [NSMutableString string];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [hash appendFormat:@"%02X",result[i]];
    return [hash lowercaseString];
}
@end
