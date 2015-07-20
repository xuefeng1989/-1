//
//  DynamicFirstViewCell.m
//  手工客1
//
//  Created by qianfeng on 15-7-17.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "DynamicFirstViewCell.h"
#import "UIImageView+AFNetworking.h"

@interface DynamicFirstViewCell ()

@property(nonatomic ,retain)DynamicCourseModel *model;

@end

@implementation DynamicFirstViewCell

- (void)awakeFromNib {
    // Initialization code
    [self prepareView];
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier WithModel:(DynamicCourseModel *)model
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.model = model;
        [self prepareView];
    }
    return self;
}

-(void)prepareView
{
    UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(30, 0, 2, 133)];
    lineView.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:lineView];
    
    UIImageView *iconImage = [[UIImageView alloc]initWithFrame:CGRectMake(5, 0, 50, 50)];
    [iconImage setImageWithURL:[NSURL URLWithString:_model.head_pic]];
    
    iconImage.layer.cornerRadius = iconImage.bounds.size.width*0.5;
    iconImage.layer.masksToBounds = YES;
    
    [self.contentView addSubview:iconImage];
    
    UILabel *titleLable = [[UILabel alloc]initWithFrame:CGRectMake(60, 10, 300, 30)];
    titleLable.font = [UIFont systemFontOfSize:15];
    titleLable.text = [NSString stringWithFormat:@"%@%@",_model.user_name,_model.event_action];
    [self.contentView addSubview:titleLable];

//    ChildCourseModel *courseModel = _model.courseModel;
    UIView *bigView = [[UIView alloc]initWithFrame:CGRectMake(60, 40, 365, 100)];
    bigView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:bigView];
    
    UIImageView *titleImage = [[UIImageView alloc]initWithFrame:CGRectMake(65, 45, 80, 80)];
    [titleImage setImageWithURL:[NSURL URLWithString:_model.courseModel.host_pic
                                ]];
    [self.contentView addSubview:titleImage];
    UILabel *detailLalbe = [[UILabel alloc]initWithFrame:CGRectMake(150, 45, 210, 0)];
    detailLalbe.text = _model.courseModel.zhuti;
    detailLalbe.numberOfLines = 0;
    CGSize size  = [detailLalbe.text boundingRectWithSize:CGSizeMake(210, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
    
    detailLalbe.frame =CGRectMake(150, 45, 220, size.height);
    [self.contentView addSubview:detailLalbe];
    UILabel *insertName = [[UILabel alloc]initWithFrame:CGRectMake(150, 110, 170, 30)];
    insertName.textAlignment = NSTextAlignmentRight;
    insertName.text = _model.courseModel.user_name;
    insertName.font = [UIFont systemFontOfSize:12];
    [self.contentView addSubview:insertName];
    
    UIImageView *inserUserIcon = [[UIImageView alloc]initWithFrame:CGRectMake(320, 100, 30, 30)];
    [inserUserIcon setImageWithURL:[NSURL URLWithString:_model.courseModel.head_pic]];
    inserUserIcon.layer.cornerRadius = iconImage.bounds.size.width*0.5;
    inserUserIcon.layer.masksToBounds = YES;
    [self.contentView addSubview:inserUserIcon];
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
