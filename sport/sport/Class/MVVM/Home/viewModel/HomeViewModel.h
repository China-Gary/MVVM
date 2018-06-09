//
//  HomeViewModel.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "BaseViewModel.h"

@interface HomeViewModel : BaseViewModel
@property (nonatomic ,strong)NSArray *ButtonScrollerArr;//按钮滚动数据
@property (nonatomic ,strong)NSMutableArray *newlistArr;//新闻列表
//获取巡管按钮
-(void)getButtonScrollerData:(BoolBlock)comlpete;
//获取新闻列表
-(void)getclassListpage:(NSInteger)page classid:(NSInteger)classid comlpete:(BoolBlock)comlpete;
@end
