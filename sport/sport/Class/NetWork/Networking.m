//
//  Networking.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "Networking.h"
#import "AFNetworking.h"
static Networking *manager=nil;
@implementation Networking
//单例，每次只允许一次网络请求
+ (Networking *)shareManager{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        //一次只允许一个请求
        if (manager==nil) {
            manager=[[Networking alloc]init];
        }
    });
    return manager;
}

//异步
- (void)GetAsyncRequest:(NSString *)url withParameter:(id)parameter success:(void (^)(NSDictionary *response))success failure:(void (^)(NSError *error))failure{
//    [self networkReachability];//检测网络
    AFHTTPSessionManager *manager = [self getHtmlSessionManager];
    NSString *reqUrl = [NSString stringWithFormat:@"%@%@",BASE_URL,url];
    NSLog(@"request url:%@",reqUrl);
    reqUrl = [reqUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    //发送http get请求
    [manager GET:reqUrl parameters:parameter progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString *result = [[NSString alloc] initWithData:responseObject  encoding:NSUTF8StringEncoding];
        NSLog(@"接口输出：%@",result);
        if ([result rangeOfString:@"Exception!"].location == NSNotFound) {
            NSDictionary *response = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            NSLog(@"%@", response);
            success(response);
        }else{
            success([NSDictionary dictionaryWithObjectsAndKeys:@"500",@"code",@"接口异常",@"msg", nil]);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        // 请求失败
        NSLog(@"%@", [error localizedDescription]);
        if (failure) {
            failure(error);
        }
    }];
}
//异步
- (void)PostAsyncRequest:(NSString *)url withParameter:(id)parameter success:(void (^)(NSDictionary *response))success failure:(void (^)(NSError *error))failure {
     AFHTTPSessionManager *manager = [self getHtmlSessionManager];
    NSString *reqUrl = [NSString stringWithFormat:@"%@%@",BASE_URL,url];
//    NSLog(@"request url:%@",reqUrl);
    reqUrl = [reqUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [manager POST:reqUrl parameters:parameter progress:^(NSProgress * _Nonnull uploadProgress) {
      
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSString *result = [[NSString alloc] initWithData:responseObject  encoding:NSUTF8StringEncoding];
        ALog("%@",responseObject);
//            NSDictionary *response = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
            success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        // 请求失败
        NSLog(@"%@", [error localizedDescription]);
        if (failure) {
            failure(error);
        }
    }];
}


//同步get
- (NSData *)GetSyncRequest:(NSString *)url{
    NSURL *requeurl = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",BASE_URL,url]];
    //第二步，通过URL创建网络请求
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:requeurl cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:10];
    NSData *received = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    return received;
}


-(AFHTTPSessionManager *) getHtmlSessionManager {
    //init
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    //    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes  = [NSSet setWithObjects:@"application/xml",@"text/xml",@"text/plain",@"application/json",@"text/html",@"text/javascript",@"text/json",nil];
//    [manager.requestSerializer setValue:@"text/plain"forHTTPHeaderField:@"Accept"];
//    [manager.requestSerializer setValue:@"text/plain;charset=UTF-8"forHTTPHeaderField:@"Content-Type"];
    //设置超时时间
    [manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    manager.requestSerializer.timeoutInterval = 10.f;
    [manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    manager.securityPolicy.allowInvalidCertificates = YES;

    return manager;
}

@end
