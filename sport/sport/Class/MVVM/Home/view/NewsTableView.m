//
//  NewsTableView.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "NewsTableView.h"
#import "NewsTableViewCell.h"
#import "HotTableViewCell.h"
@implementation NewsTableView

-(instancetype)init {
    if ([super init]) {
        [self setTabView];
    }
    return self;
}

-(void)setTabView {
    self.frame = CGRectMake(0, kStatusHeight+60, kScreenWidth, kScreenHeight - kStatusHeight - kTabbarHeight - 60);
    self.tabv = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ViewWidth, ViewHeight) style:UITableViewStylePlain];
    self.tabv.showsVerticalScrollIndicator = NO;
    self.tabv.backgroundColor= [UIColor whiteColor];
    [UIFactory adjustIOSUI:self.tabv];
    self.tabv.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tabv registerClass:[NewsTableViewCell class] forCellReuseIdentifier:[NewsTableViewCell cellid]];
    [self.tabv registerClass:[HotTableViewCell class] forCellReuseIdentifier:[HotTableViewCell cellID]];
    [self addSubview:self.tabv];
}



@end
