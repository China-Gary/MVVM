//
//  HomeViewModel.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "HomeViewModel.h"

@implementation HomeViewModel
-(void)getButtonScrollerData:(BoolBlock)complete {
    Weakself(weakself);
    [[APIClient sharedManager] postBannerListsuccess:^(NSDictionary *respone) {
        __strong typeof(self) strongSelf = weakself;
        Response *rsp = [[Response alloc] initWithDict:respone[@"data"]];
        if((long)rsp.code ==1){
            //成功
            strongSelf.ButtonScrollerArr = (NSArray*)[respone[@"data"] objectForKey:@"data"];
            complete(YES,nil);
        } else {
            //失败
            complete(NO,nil);
        }
//        strongSelf.ButtonScroller = respone.
    } failure:^(NSError *error) {
        complete(NO,error);
    }];
}

-(void)getclassListpage:(NSInteger)page classid:(NSInteger)classid comlpete:(BoolBlock)comlpete {
     Weakself(weakself);
    [[APIClient sharedManager] postConsultListsuccesspage:page classid:classid success:^(NSDictionary *respone) {
        __strong typeof(self) strongSelf = weakself;
        Response *rsp = [[Response alloc] initWithDict:respone[@"data"]];
        if((long)rsp.code ==1){
            //成功
            strongSelf.newlistArr = (NSMutableArray*)[respone[@"data"] objectForKey:@"data"];
            comlpete(YES,nil);
        } else {
            //失败
            comlpete(NO,nil);
        }
    } failure:^(NSError *error) {
        comlpete(NO,error);
    }];
}

@end
