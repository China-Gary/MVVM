//
//  TabBarViewController.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "TabBarViewController.h"
#import "HomeVC.h"
#import "ActivityVC.h"
#import "gameVC.h"
#import "MineVC.h"
#import "UIImage+Color.h"
#import "APIClient.h"
#import "ImageTabBar.h"
@interface TabBarViewController ()<ImgaeTabBarDelegate>

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    HomeVC *home = [[HomeVC alloc] init];
    gameVC *game = [gameVC new];
    ActivityVC *activity = [ActivityVC new];
    MineVC *mine = [MineVC new];
    [self setUpchildVCWithNav:home andNorImg:[[UIImage imageNamed:@"tab_home_n"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] andSelectedImg:[[UIImage imageNamed:@"tab_home_h"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] andtabBarTitle:@"首页" andtableTitle:@"首页"];
    
    [self setUpchildVCWithNav:game andNorImg:[[UIImage imageNamed:@"tab_sc_n"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] andSelectedImg:[[UIImage imageNamed:@"tab_sc_h"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] andtabBarTitle:@"赛程" andtableTitle:@"赛程"];
    
    [self setUpchildVCWithNav:activity andNorImg:[[UIImage imageNamed:@"tab_video_n"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] andSelectedImg:[[UIImage imageNamed:@"tab_video_h"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] andtabBarTitle:@"活动" andtableTitle:@"活动"];
    
    [self setUpchildVCWithNav:mine andNorImg:[[UIImage imageNamed:@"tab_me_n"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] andSelectedImg:[[UIImage imageNamed:@"tab_me_h"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] andtabBarTitle:@"我的" andtableTitle:@"我的"];
//    [self setValue:[[ImageTabBar alloc] init] forKeyPath:@"tabBar"];
//    [[ImageTabBar alloc] init].delegate = self;
}

+(void)initialize{
    UITabBarItem *tabBarItem=[UITabBarItem appearance];
    //未选中时字体颜色
    NSMutableDictionary *norDic = @{}.mutableCopy;
    norDic[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    norDic[NSForegroundColorAttributeName] = RGBColor(162, 162, 162);
    [tabBarItem setTitleTextAttributes:norDic forState:UIControlStateNormal];

    //选中时字体颜色
    NSMutableDictionary *selectDic = @{}.mutableCopy;
    selectDic[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    selectDic[NSForegroundColorAttributeName] = [UIColor blackColor];
    [tabBarItem setTitleTextAttributes:selectDic forState:UIControlStateSelected];
}


-(void)setUpchildVCWithNav:(UIViewController*)child andNorImg:(UIImage *)norImg andSelectedImg:(UIImage*)selectImg andtabBarTitle:(NSString*)tabBarTitile andtableTitle:(NSString*)tableTitle
{
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor clearColor]} forState:UIControlStateNormal];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:child];
    //设置导航栏标题大小和背景颜色
    nav.navigationBar.barTintColor = [UIColor whiteColor];
    //导航栏背景图片
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setTintColor:[UIColor whiteColor]];
    [navBar setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor]]
                forBarPosition:UIBarPositionAny
                    barMetrics:UIBarMetricsDefault];
//    去掉导航栏下的黑色的线
//    [navBar setShadowImage:[[UIImage alloc] init]];
    
    [navBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:[UIColor blackColor]}];
    
    nav.tabBarItem.image = norImg;
    nav.tabBarItem.selectedImage = selectImg;
    nav.tabBarItem.title = tabBarTitile;
    if (@available(iOS 11.0, *)) {// 适配ios
        navBar.frame = CGRectMake(0, kStatusHeight, kScreenWidth, NavigationBarHeight);
    }
    child.title = tableTitle;
    [self addChildViewController:nav];
}

#pragma mark - delegate
- (void)specailButtonClickAction {
    NSLog(@"点击了");
}


@end
