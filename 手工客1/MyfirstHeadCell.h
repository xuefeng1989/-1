//
//  MyfirstHeadCell.h
//  手工客1
//
//  Created by qianfeng on 15-7-16.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"
#import "GPInteractModel.h"

@interface MyfirstHeadCell : BaseTableViewCell

@property (nonatomic ,retain)UIImageView *ImageView;

@property (nonatomic ,retain)UILabel *LableTitle;

@property(nonatomic ,retain)NSArray *modelArray;



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier WithModelArray:(NSArray *)array;
@end
