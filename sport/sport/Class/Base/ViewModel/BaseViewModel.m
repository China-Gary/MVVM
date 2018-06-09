//
//  BaseViewModel.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "BaseViewModel.h"

@implementation BaseViewModel
- (id)initWithTarge:(BaseViewController *)viewController{
    if (self = [super init]) {
        _viewController = viewController;
    }
    return self;
}
@end
