//
//  HotTableViewCell.m
//  sport
//
//  Created by Erha on 2018/6/5.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "HotTableViewCell.h"

@implementation HotTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

+ (NSString*)cellID {
    return @"HotTableViewCell";
}

@end
