//
//  ButtonScrollerView.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol buttonScrollerDelegate  <NSObject>
-(void)selectButton:(UIButton*)btn;
@end

@interface ButtonScrollerView : UIView
@property (nonatomic ,strong)NSArray *buttonArr;
@property (nonatomic ,strong)UIScrollView *scroller;
@property (nonatomic ,strong)UIView *line;
@property (nonatomic ,strong)UIView *slideline;
@property (nonatomic ,weak)id<buttonScrollerDelegate>delegate;

-(void)setButtonTitle:(NSArray *)arr;
@end
