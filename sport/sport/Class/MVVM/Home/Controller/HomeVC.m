//
//  HomeVC.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "HomeVC.h"
#import "HomeViewModel.h"
#import "ButtonScrollerView.h"
#import "NewsTableView.h"
#import "NewsTableViewCell.h"
#import "HotTableViewCell.h"
#import "ButtonScrModel.h"
#import "NewsDetaiVC.h"
#import "LocationManager.h"
@interface HomeVC ()<buttonScrollerDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic ,assign)NSInteger butntag;
@property (nonatomic ,strong) NSArray *buttonScrArr;
@property (nonatomic ,strong)ButtonScrollerView *btnScro;
@property (nonatomic ,strong)HomeViewModel *homeModel;
@property (nonatomic ,strong)NewsTableView *newview;
@property (nonatomic ,strong)NewsModel *newmodel;
@property (nonatomic ,strong)ButtonScrModel *classmode;
@property (nonatomic ,strong)NSMutableArray *newlistArr;
@property (nonatomic , assign)NSInteger page;
@end

@implementation HomeVC

-(NSMutableArray *)newlistArr {
    if (!_newlistArr) {
        _newlistArr = [NSMutableArray new];
    }
    return _newlistArr;
}
-(NSArray *)buttonScrArr {
    if (!_buttonScrArr) {
        _buttonScrArr = [NSMutableArray new];
    }
    return _buttonScrArr;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.page = 1;
    self.butntag = 1;
    self.homeModel = [[HomeViewModel alloc] initWithTarge:self];
    
    self.newview = [[NewsTableView alloc] init];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.newview.tabv.delegate = self;
    self.newview.tabv.dataSource = self;
    [self.view addSubview:self.newview];
    [self setUpView];
    [self addMJfresh];
}
-(void)setUpView {
    self.btnScro = [[ButtonScrollerView alloc] init];
    self.btnScro.delegate = self;
    [self.view addSubview:self.btnScro];
    dispatch_group_t groupQueue = dispatch_group_create();
    dispatch_group_enter(groupQueue);
    [self.homeModel getButtonScrollerData:^(BOOL flag, NSError *error) {
        self.buttonScrArr = self.homeModel.ButtonScrollerArr;
        [self.btnScro setButtonTitle:self.homeModel.ButtonScrollerArr];
        dispatch_group_leave(groupQueue);
    }];
    dispatch_group_notify(groupQueue, dispatch_get_main_queue(), ^{
        [self refreshTable];
    });
}

-(void)addMJfresh {
    self.newview.tabv.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        self.page = 1;
        [self refreshTable];
        [self.newview.tabv.mj_header endRefreshing];
    }];
    // 设置自动切换透明度(在导航栏下面自动隐藏)
    self.newview.tabv.mj_header.automaticallyChangeAlpha = YES;
    self.newview.tabv.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        self.page++;
        [self refreshTable];
        [self.newview.tabv.mj_footer endRefreshing];
    }];
}

-(void)refreshTable {
    self.classmode = [[ButtonScrModel alloc] initWithDict:(NSDictionary*)self.buttonScrArr[self.butntag]];
    [self.homeModel getclassListpage:self.page classid:self.classmode.id.integerValue comlpete:^(BOOL flag, NSError *error) {
        self.newlistArr = self.homeModel.newlistArr;
        [self.newview.tabv reloadData];
    }];
}

#pragma mark -滚动按钮的代理
-(void)selectButton:(UIButton *)btn {
    self.butntag = btn.tag - 10;
    [self refreshTable];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.newlistArr.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[NewsTableViewCell cellid] forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NewsModel *model = [[NewsModel alloc] initWithDict:(NSDictionary*)self.newlistArr[indexPath.row]];
    [cell setCellWithModel:model];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsDetaiVC *vc = [[NewsDetaiVC alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
@end
