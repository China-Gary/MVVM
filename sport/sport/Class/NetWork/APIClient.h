//
//  APIClient.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Networking.h"
@interface APIClient : NSObject
+ (APIClient *)sharedManager;
//分类
-(void)postBannerListsuccess:(void (^)(NSDictionary *respone))success failure:(void(^)(NSError *error))failure;
//分类详情列表
-(void)postConsultListsuccesspage:(NSInteger)page classid:(NSInteger)classid success:(void (^)(NSDictionary *respone))success failure:(void(^)(NSError *error))failure;

@end
