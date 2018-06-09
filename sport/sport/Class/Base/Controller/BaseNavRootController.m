//
//  BaseNavRootController.m
//  Kart_ffzx
//
//  Created by 朱鹏 on 14-4-9.
//  Copyright (c) 2014年 ffzx. All rights reserved.
//

#import "BaseNavRootController.h"
//#import "Controller.h"
//#import "UserController.h"

@interface BaseNavRootController ()<UIGestureRecognizerDelegate>

@end

@implementation BaseNavRootController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}
-(instancetype)init {
    if ([super init]) {
        
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.view setBackgroundColor:[UIColor colorWithRed:37/255 green:45/255 blue:59/255 alpha:1]];

    
}


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
    
    // 修改tabBar的frame,适配iphoneX
    
    CGRect frame = self.tabBarController.tabBar.frame;
    
    frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
    
    self.tabBarController.tabBar.frame = frame;
}

/*
-(BOOL)shouldAutorotate
{
    return YES;
}
-(NSUInteger)supportedInterfaceOrientations
{
    return [self.viewControllers.lastObject supportedInterfaceOrientations];
}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.viewControllers.lastObject preferredInterfaceOrientationForPresentation];
}
 */
@end


