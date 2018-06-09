//
//  Networking.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Networking : NSObject
+ (Networking *)shareManager;


/**
 *  http 异步get请求
 *  @param url  url
 *  @param success 成功回调
 *  @param failure 失败回调
 */
- (void)GetAsyncRequest:(NSString *)url withParameter:(id)parameter success:(void (^)(NSDictionary *response))success failure:(void (^)(NSError *error))failure;

/**
 *  http 异步post请求
 *
 *  @param url     url
 *  @param success 成功回调
 *  @param failure 失败回调
 */
- (void)PostAsyncRequest:(NSString *)url withParameter:(id)parameter success:(void (^)(NSDictionary *response))success failure:(void (^)(NSError *error))failure;

@end
