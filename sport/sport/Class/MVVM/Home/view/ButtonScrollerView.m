//
//  ButtonScrollerView.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "ButtonScrollerView.h"
#import "ButtonScrModel.h"
#define distance 20
@implementation ButtonScrollerView

-(instancetype)init{
    if([super init]){
        [self setupView];
    }
    return self;
}

-(void)setupView {
    self.frame = CGRectMake(0, kStatusHeight, kScreenWidth , 60);

    self.scroller = [[UIScrollView alloc] init];
    self.scroller.frame = CGRectMake(0, 0, ViewWidth, ViewHeight);
    self.scroller.backgroundColor = [UIColor whiteColor];
    self.scroller.bounces = YES; // 默认为YES 取消设置NO
    self.scroller.alwaysBounceHorizontal = NO; // 水平方向弹簧效果
    self.scroller.alwaysBounceVertical = NO; // 垂直方向弹簧效果
    self.scroller.showsHorizontalScrollIndicator = NO; // 水平方向
    self.scroller.showsVerticalScrollIndicator = NO; // 垂直方向
    self.scroller.canCancelContentTouches = NO;//是否可以中断touche
    [self addSubview:self.scroller];
}

-(void)setButtonTitle:(NSArray *)arr {
    self.buttonArr = arr;
    CGFloat X_button = 0;
    for (int i =0; i<arr.count; i++) {
        ButtonScrModel *model = [[ButtonScrModel alloc] initWithDict:(NSDictionary*)arr[i]];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        CGFloat widthBtn = [UIFactory widthWithLable:model.consultClassName andFont:16 andHeight:ViewHeight];
//        X_button = X_button+distance;
        button.frame = CGRectMake(X_button+distance, 0, widthBtn, ViewHeight);
        X_button =button.mj_x + widthBtn;
        button.selected = NO;
        if(i == 1){
            button.selected = YES;
            self.slideline = [[UIView alloc] init];
            self.slideline.backgroundColor =RGBColor(255, 102, 50);
            self.slideline.frame = CGRectMake(button.mj_x,ViewHeight-3,widthBtn,3);
            [self.scroller addSubview:self.slideline];
        }
        
        [button setTitleColor:RGBColor(128, 128, 128) forState:UIControlStateNormal];
        [button setTitleColor:RGBColor(255, 102, 50) forState:UIControlStateSelected];
        button.titleLabel.textAlignment = NSTextAlignmentCenter;
        button.titleLabel.font = [UIFont systemFontOfSize:16];
        button.tag = i+10;
        [self.scroller addSubview:button];
//        [button mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.bottom.mas_equalTo(0);
//            make.width.mas_equalTo(widthBtn);
//            make.left.mas_equalTo(widthBtn*i);
//        }];
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:model.consultClassName forState:UIControlStateNormal];
    }
    //线
    self.line = [[UIView alloc] init];
    self.line .backgroundColor = RGBColor(204, 204, 204);
    self.line.frame =CGRectMake(0, ViewHeight-1, X_button+distance, 1);
    [self.scroller addSubview:self.line];

    self.scroller.contentSize = CGSizeMake( X_button+distance, ViewHeight);
}


-(void)buttonClick :(UIButton*)btn {
    CGFloat tag2_x = [self viewWithTag:btn.tag - 2].mj_x;
    for (int i = 0; i< self.buttonArr.count; i++) {
        UIButton *button = [self viewWithTag:i+10];
        button.selected = NO;
    }
    
    btn.selected = YES;
    if(self.delegate && [self.delegate respondsToSelector:@selector(selectButton:)]){
        [UIView animateWithDuration:0.3 animations:^{
            [self.scroller scrollRectToVisible:CGRectMake(tag2_x, 0,ViewWidth, ViewHeight) animated:YES];
            self.slideline.frame = CGRectMake(btn.mj_x, ViewHeight-3, btn.mj_w, 3);
            [self.delegate selectButton:btn];
        }];
    }
}

@end
