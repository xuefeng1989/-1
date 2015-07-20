//
//  darenTableViewCell.m
//  手工客1
//
//  Created by qianfeng on 15-7-17.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "darenTableViewCell.h"
#import "UIImageView+AFNetworking.h"

@interface darenTableViewCell ()
@property(nonatomic ,retain)GPDarenModel *model;
@end

@implementation darenTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier WithModel:(GPDarenModel *)model
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
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 40)];
    [self.contentView addSubview:view];
    UILabel *titleLable = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 240, 30)];
    titleLable.text = @"达人推荐";
    [view addSubview:titleLable];
    UIImageView *imageGo = [[UIImageView alloc]initWithFrame:CGRectMake(330, 5, 40, 30)];
    imageGo.image = [UIImage imageNamed:@"ws_homepage_arrow"];
    [view addSubview:imageGo];
    
    UIImageView *bigView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 40, 365, 180)];
    [bigView setImageWithURL:[NSURL URLWithString:_model.bg_image]];
    
    [self.contentView addSubview:bigView];
    
    UIImageView *iconImage = [[UIImageView alloc]initWithFrame:CGRectMake(160, 5, 40, 40)];
    [iconImage setImageWithURL:[NSURL URLWithString:_model.avatar]];
    
    iconImage.layer.cornerRadius = iconImage.bounds.size.width*0.5;
    iconImage.layer.masksToBounds = YES;
    UIImageView *tagImage = [[UIImageView alloc]initWithFrame:CGRectMake(160, 40, 40, 10)];
    tagImage.image = [UIImage imageNamed:@"pp_Identifer"];
    
    [bigView addSubview:iconImage];
    [bigView addSubview:tagImage];
    UILabel *nameLable = [[UILabel alloc]initWithFrame:CGRectMake(140, 50, 80, 30)];
    nameLable.text = _model.uname;
    nameLable.textAlignment = NSTextAlignmentCenter;
    nameLable.font = [UIFont systemFontOfSize:17];
    [bigView addSubview:nameLable];
    UILabel *countryLable = [[UILabel alloc]initWithFrame:CGRectMake(150, 85, 60, 20)];
    countryLable.font = [UIFont systemFontOfSize:13];
    countryLable.text = _model.region;
    countryLable.textAlignment = NSTextAlignmentCenter;
    [bigView addSubview:countryLable];
    UILabel *signLable = [[UILabel alloc]initWithFrame:CGRectMake(100, 110, 180, 30)];
    signLable.font = [UIFont systemFontOfSize:15];
    signLable.text = [NSString stringWithFormat:@"教程%@ 粉丝%@ 手工圈%@",_model.coursecount,_model.fen_num,_model.circle_count];
    [bigView addSubview:signLable];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(160, 145, 40, 30);
    button.backgroundColor = [UIColor grayColor];
    button.alpha = 0.9;
    [button setTitle:@"关注" forState:UIControlStateNormal];
    [bigView addSubview:button];
    
}


@end
