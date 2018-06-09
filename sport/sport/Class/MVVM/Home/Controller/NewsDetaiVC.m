//
//  NewsDetaiVC.m
//  sport
//
//  Created by Erha on 2018/6/5.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "NewsDetaiVC.h"
#import "UIViewController+AddMyMethod.h"
#import "NSDate+Utils.h"
#import "UIButton+ImageTitleLayout.h"
#import "UIButton+CS_FixMultiClick.h"
#import "UIControl+CS_FixMultiClick.h"
#import "UIImage+Color.h"
@interface NewsDetaiVC ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic ,strong)UIImageView *img;
@property (nonatomic ,strong)UICollectionView *collView;
@end

@implementation NewsDetaiVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationItem.title = @"新闻";
   [self setNavigationItemLeftButtonWithTitle:@"返回" action:@selector(back) color:[UIColor greenColor]];

//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(100, 100, 100, 100);
//    [btn setBackgroundImage:[UIImage imageNamed:@"tab_video_h"] forState:UIControlStateNormal];
//    [btn setImage:[UIImage imageNamed:@"tab_video_h"] forState:UIControlStateNormal];
//    [btn setTitle:@"你好啊" forState:UIControlStateNormal];
//    btn.backgroundColor = [UIColor greenColor];
//    btn.cs_acceptEventInterval = 2;
//    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
//    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
//    btn.imageRect = CGRectMake(20, 0, 60, 60);
//    btn.titleRect = CGRectMake(0, 65, 100, 35);
//    [self.view addSubview:btn];
//    self.navigationItem.titleView = btn;
//    [NSDate is12HourSystem];
//    NSString *date = [NSDate dateDisplayResult:[NSDate dateWithString:@"2018-06-06 4:51:20"]];
//    NSLog(@"时间\n:%@",date);
    
}

//-(void)click {
//    NSLog(@"点击按钮");
//}

//- (void)back {
//    NSLog(@"back");
//    [self.navigationController popViewControllerAnimated:YES];
//}
//
///** 总共多少组*/
//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//    return 3;
//}
//
//#pragma mark -- UICollectionViewDataSource
///** 每组cell的个数*/
//- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    return 7;
//}

@end
