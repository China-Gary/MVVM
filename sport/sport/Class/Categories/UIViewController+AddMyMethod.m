//
//  UIViewController+AddMyMethod.m
//  SportNews
//
//  Created by 深圳快优网络服务有限公司 on 2017/12/15.
//  Copyright © 2017年 KuaiYou. All rights reserved.
//

#import "UIViewController+AddMyMethod.h"

@implementation UIViewController (AddMyMethod)
-(void)setNavigationItemRightButton:(NSString *)imageName action:(nullable SEL)action
{
    UIButton *rightButton;
    rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0,22, 22);
    
    //    [rightButton setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [rightButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    
    
    UIBarButtonItem  *rightButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    [rightButton addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
//    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:rightButtonItem, nil];
    [self.navigationItem  setRightBarButtonItem:rightButtonItem];
}

-(UIButton *_Nonnull)setNavigationItemRightButtonWithTitle:(nullable NSString *)title action:(_Nonnull SEL)action color:(UIColor *)color
{
    UIFont *fnt = [UIFont systemFontOfSize:16];
    CGSize size = [title sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:fnt,NSFontAttributeName, nil]];
    
    UIButton *rightButton;
    rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0,size.width, 22);
    
    [rightButton setTitle:title forState:UIControlStateNormal];
    [rightButton setTitleColor:color forState:UIControlStateNormal];
    rightButton.titleLabel.font = fnt;
    
    UIBarButtonItem  *rightButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    [rightButton addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    
//    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:rightButtonItem, nil];
    [self.navigationItem  setRightBarButtonItem:rightButtonItem];
    return rightButton;
}



-(void)setNavigationItemLeftButton:(NSString *)image action:(nullable SEL)action
{
    UIButton *leftButton;
    leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = CGRectMake(0, 0,22, 22);
    [leftButton setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    UIBarButtonItem  *leftButtonItem = [[UIBarButtonItem alloc]initWithCustomView:leftButton];
    [leftButton addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [self.navigationItem  setLeftBarButtonItem:leftButtonItem];
    
}

-(UIButton*)setNavigationItemLeftButtonWithTitle:(NSString *)title action:(_Nonnull SEL)action color:(UIColor *)color
{
    UIFont *fnt = [UIFont systemFontOfSize:16];
    CGSize size = [title sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:fnt,NSFontAttributeName, nil]];
    UIButton *leftButton;
    leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = CGRectMake(0, 0,size.width, 44);
    
    [leftButton setTitle:title forState:UIControlStateNormal];
    [leftButton setTitleColor:color forState:UIControlStateNormal];
    leftButton.titleLabel.font = fnt;
    
    UIBarButtonItem  *leftButtonitem = [[UIBarButtonItem alloc]initWithCustomView:leftButton];
    [leftButton addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
//        self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:leftButtonitem, nil];
    [self.navigationItem  setLeftBarButtonItem:leftButtonitem];
    return leftButton;
}

- (void)setNavigationCenterTitleItem:(NSString *)title
{
    UIFont *fnt = [UIFont systemFontOfSize:14];
    CGSize size = [title sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:fnt,NSFontAttributeName, nil]];
    
    UILabel *label_title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, size.width+35, 30)];
    label_title.backgroundColor = [UIColor whiteColor];
    label_title.text = title;
    label_title.textAlignment = NSTextAlignmentCenter;
    //    label_title.textColor = [UIColor whiteColor];
//    label_title.textColor = KColorMainBackground;
    label_title.font = fnt;
//    label_title.layer.cornerRadius = label_title.height/2.0;
    label_title.layer.masksToBounds = YES;
    
//    label_title.layer.borderColor = KColorMainBackground.CGColor;
    label_title.layer.borderWidth = 0.5;
    
    self.navigationItem.titleView = label_title;
    
}


- (void)setNavigationCenterImageView:(NSString *)imageName
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 12, 40, 20)];
    [imageView setImage:[UIImage imageNamed:imageName]];
    
    self.navigationItem.titleView = imageView;
    
}

//- (void)dismissAction:(id)sender
//{
//    [self dismissViewControllerAnimated:YES completion:nil];
//}
//
//-(void)backAction:(id)sender
//{
//    
//    if (self.navigationController.viewControllers.count>1) {
//        
//        [self.navigationController popViewControllerAnimated:YES];
//    }
//    else
//    {
//        [self.navigationController dismissViewControllerAnimated:YES completion:^{
//            
//        }];
//    }
//    
//}

@end
