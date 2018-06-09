//
//  NewsTableViewCell.h
//  sport
//
//  Created by Erha on 2018/6/4.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsModel.h"
@interface NewsTableViewCell : UITableViewCell
@property (nonatomic ,strong)UILabel *nameLable;
@property (nonatomic ,strong)UIImageView *iconImg;
@property (nonatomic ,strong)UIView *line;

@property (nonatomic ,strong)UICollectionView *collView;

+(NSString *)cellid;
-(void)setCellWithModel:(NewsModel*)model;
@end
