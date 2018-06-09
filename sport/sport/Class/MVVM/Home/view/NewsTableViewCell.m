//
//  NewsTableViewCell.m
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "NewsTableViewCell.h"

@implementation NewsTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor clearColor];
        [self setView];
    }
    return  self;
}

-(void)setView{
//    self.iconImg = [[UIImageView alloc] init];
//    [self.contentView addSubview:self.iconImg];
//
//    self.nameLable = [[UILabel alloc] init];
//    self.nameLable.font = [UIFont systemFontOfSize:20];
//    self.nameLable.textColor = [UIColor blackColor];
//    self.nameLable.textAlignment = NSTextAlignmentLeft;
//    self.nameLable.numberOfLines = 2;
//    [self.contentView addSubview:self.nameLable];
//
//    self.line = [[UIView alloc] init];
//    self.line.backgroundColor = RGBColor(204, 204, 204);
//    [self.contentView addSubview:self.line];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    /*
     // 1.设置列间距
     layout.minimumInteritemSpacing = 1;
     // 2.设置行间距
     layout.minimumLineSpacing = 1;
     // 3.设置每个item的大小
     layout.itemSize = CGSizeMake(50, 50);
     // 4.设置Item的估计大小,用于动态设置item的大小，结合自动布局（self-sizing-cell）
     layout.estimatedItemSize = CGSizeMake(320, 60);
     // 5.设置布局方向
     layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
     // 6.设置头视图尺寸大小
     layout.headerReferenceSize = CGSizeMake(50, 50);
     // 7.设置尾视图尺寸大小
     layout.footerReferenceSize = CGSizeMake(50, 50);
     // 8.设置分区(组)的EdgeInset（四边距）
     layout.sectionInset = UIEdgeInsetsMake(10, 20, 30, 40);
     // 9.10.设置分区的头视图和尾视图是否始终固定在屏幕上边和下边
     layout.sectionFootersPinToVisibleBounds = YES;
     layout.sectionHeadersPinToVisibleBounds = YES;
     */
    self.collView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, SafeAreaTopHeight, kScreenWidth, kScreenHeight) collectionViewLayout:layout];
    self.collView.backgroundColor = [UIColor whiteColor];
//    self.collView.delegate = self;
//    self.collView.dataSource = self;
    [self addSubview:self.collView];
    
}

-(void)setCellWithModel:(NewsModel*)model {
    self.nameLable.text = model.consultName;
    [self.iconImg sd_setImageWithURL:[NSURL URLWithString:model.consultImg] placeholderImage:[UIImage imageNamed:@"hot_placeHolder"]];
}

-(void)layoutSubviews {
    [self.iconImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(10);
        make.bottom.mas_equalTo(-10);
        make.width.mas_equalTo(100);
    }];
    [self.nameLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(0);
        make.left.equalTo(self.iconImg.mas_right).offset(20);
        make.right.mas_equalTo(-20);
    }];
    
    [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImg.mas_left);
        make.right.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.height.mas_equalTo(1);
    }];
}

+(NSString *)cellid {
    return @"NewsTableView";
}
@end
