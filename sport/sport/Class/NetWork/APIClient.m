//
//  APIClient.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "APIClient.h"
#define Kservice         @"service"
#define KaccessToken     @"accessToken"
@implementation APIClient
static APIClient *manager=nil;

+ (APIClient *)sharedManager{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        // 一次只允许一个请求
        if (manager==nil) {
            manager=[[APIClient alloc]init];
        }
    });
    return manager;
}
-(void)postBannerListsuccess : (void (^)(NSDictionary *respone))success failure:(void(^)(NSError *error))failure {
    [[Networking shareManager] PostAsyncRequest:@"" withParameter:@{Kservice:@"WeOpen.ConsultClassList",KaccessToken:@""} success:success failure:failure];
}

-(void)postConsultListsuccesspage:(NSInteger)page classid:(NSInteger)classid success:(void (^)(NSDictionary *respone))success failure:(void(^)(NSError *error))failure{
    [[Networking shareManager] PostAsyncRequest:@"" withParameter:@{Kservice:@"WeOpen.ConsultList",KaccessToken:@"",@"page":[NSNumber numberWithInteger:page],@"classId":[NSString stringWithFormat:@"%ld",classid]} success:success failure:failure];
}

@end
