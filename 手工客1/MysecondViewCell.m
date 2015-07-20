//
//  MysecondViewCell.m
//  手工客1
//
//  Created by qianfeng on 15-7-16.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "MysecondViewCell.h"
#import "UIImageView+AFNetworking.h"

@interface MysecondViewCell ()

@property(nonatomic,retain)GPBuyModel *model;

@property(nonatomic,retain)UILabel *timelable;
@property(nonatomic,retain)UILabel *subjectlable;
@property(nonatomic,retain)UIImageView *host_picImages;

@end

@implementation MysecondViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier WithModel:(GPBuyModel *)model
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
    UILabel *titlelable =[[UILabel alloc]initWithFrame:CGRectMake(5, 0, 80, 40)];
    titlelable.text = @"限时抢购";
    [self.contentView addSubview:titlelable];
    _host_picImages = [[UIImageView alloc]initWithFrame:CGRectMake(5, 40, 365, 150)];
    [_host_picImages setImageWithURL:[NSURL URLWithString:_model.host_pic]];
    [self.contentView addSubview:_host_picImages];
    
    UILabel *priceLable = [[UILabel alloc]initWithFrame:CGRectMake(5, 50, 30, 20)];
    priceLable.font = [UIFont systemFontOfSize:14];
    priceLable.text = [NSString stringWithFormat:@"¥%@",_model.price];
    priceLable.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:priceLable];
    
    _subjectlable = [[UILabel alloc]initWithFrame:CGRectMake(5, 195, 365, 40)];
    _subjectlable.text = _model.subject;
    [self.contentView addSubview:_subjectlable];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
