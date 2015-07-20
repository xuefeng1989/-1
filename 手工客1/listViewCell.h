//
//  listViewCell.h
//  手工客1
//
//  Created by qianfeng on 15-7-17.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "listModel.h"
@interface listViewCell : UITableViewCell

@property (nonatomic ,assign)CGFloat rowHeight;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier WithModel:(listModel *)model;

@end
