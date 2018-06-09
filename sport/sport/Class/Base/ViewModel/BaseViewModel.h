//
//  BaseViewModel.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseViewController.h"
typedef void (^BoolBlock)(BOOL flag, NSError *error);
@interface BaseViewModel : NSObject
@property (nonatomic, strong) BaseViewController *viewController;

- (id)initWithTarge:(BaseViewController *)viewController;
@end
