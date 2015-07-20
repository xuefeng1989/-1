//
//  listViewCell.m
//  手工客1
//
//  Created by qianfeng on 15-7-17.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "listViewCell.h"
#import "UIImageView+AFNetworking.h"

@interface listViewCell ()
@property (nonatomic ,retain)listModel *model;
@end

@implementation listViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier WithModel:(listModel *)model
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
    UILabel *nameLalbe = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, 305, 30)];
    nameLalbe.textAlignment = NSTextAlignmentRight;
    nameLalbe.text = self.model.user_name;
    [self.contentView addSubview:nameLalbe];
    UIImageView *iconImage = [[UIImageView alloc]initWithFrame:CGRectMake(310, 0, 60, 60)];
    [iconImage setImageWithURL:[NSURL URLWithString:self.model.face_pic]];
    
    iconImage.layer.cornerRadius = iconImage.bounds.size.width*0.5;
    iconImage.layer.masksToBounds = YES;
    
    
    UIImageView *mainView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 35, 365, 150)];
    [mainView setImageWithURL:[NSURL URLWithString:self.model.host_pic_s]];
    [self.contentView addSubview:mainView];
    
    [self.contentView addSubview:iconImage];

    UILabel *detailLable = [[UILabel alloc]initWithFrame:CGRectMake(5, 190, 365, 0)];
    detailLable.font = [UIFont systemFontOfSize:17];
    detailLable.textAlignment = NSTextAlignmentLeft;
    detailLable.numberOfLines = 0;
    detailLable.lineBreakMode = NSLineBreakByCharWrapping;
    detailLable.text = self.model.summary;
    CGSize size  = [detailLable.text boundingRectWithSize:CGSizeMake(365, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
    
    detailLable.frame = CGRectMake(5, 190, 365, size.height);
    
    [self.contentView addSubview:detailLable];
    
    UILabel *asignLable = [[UILabel alloc]initWithFrame:CGRectMake(5, 195 + size.height, 365, 20)];
    
    asignLable.font = [UIFont systemFontOfSize:12];
    asignLable.text = [NSString stringWithFormat:@"%@人气/%@赞/%@收藏/%@评论",self.model.opus_num,self.model.laud,self.model.collect,self.model.comment_num];
    asignLable.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:asignLable];
    self.rowHeight = 220 + size.height;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
