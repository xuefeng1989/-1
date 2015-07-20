//
//  darenTableViewCell.h
//  手工客1
//
//  Created by qianfeng on 15-7-17.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "GPDarenModel.h"
@interface darenTableViewCell : BaseTableViewCell


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier WithModel:(GPDarenModel *)model;
@end
