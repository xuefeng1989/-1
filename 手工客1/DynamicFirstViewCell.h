//
//  DynamicFirstViewCell.h
//  手工客1
//
//  Created by qianfeng on 15-7-17.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DynamicCourseModel.h"

@interface DynamicFirstViewCell : UITableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier WithModel:(DynamicCourseModel *)model;

@end
