//
//  Response.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "BaseModel.h"

@interface Response : BaseModel
@property(nonatomic, assign)long code;//判断请求数据是否成功
@property (nonatomic,assign) NSObject<Optional> *context;
@property (nonatomic,assign) NSMutableArray<Optional> *data;
@end
