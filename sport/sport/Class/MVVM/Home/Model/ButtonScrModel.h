//
//  ButtonScrModel.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "BaseModel.h"

@interface ButtonScrModel : BaseModel
@property(nonatomic ,strong)NSString *id;
@property(nonatomic ,strong)NSString<Optional> *consultClassName;
@property(nonatomic ,strong)NSString<Optional> *createTime;
@property(nonatomic ,strong)NSString<Optional> *status;
@property(nonatomic ,strong)NSString<Optional> *top;
@property(nonatomic ,strong)NSString<Optional> *updateTime;
@end
