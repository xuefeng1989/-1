//
//  MyfirstHeadCell.m
//  手工客1
//
//  Created by qianfeng on 15-7-16.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "MyfirstHeadCell.h"
#import "UIImageView+AFNetworking.h"

@implementation MyfirstHeadCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier WithModelArray:(NSArray *)array
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.modelArray = array;
        [self prepareView];
    }
    return self;
}

-(void)prepareView
{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 40)];
    [self.contentView addSubview:view];
    UILabel *titleLable = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 240, 30)];
    titleLable.text = @"互动课堂";
    [view addSubview:titleLable];
    UIImageView *imageGo = [[UIImageView alloc]initWithFrame:CGRectMake(330, 5, 40, 30)];
    imageGo.image = [UIImage imageNamed:@"ws_homepage_arrow"];
    [view addSubview:imageGo];
    CGFloat sizeHeight = 0;
     CGFloat ImageViewHeight = 0;
    for (int i = 0; i < _modelArray.count; i++) {
        
        GPInteractModel *model = _modelArray[i];
        int x = i % 2;
        int y = i / 2;
        if (x == 0) {
             _ImageView = [[UIImageView alloc]initWithFrame:CGRectMake(x * 185 + 5, y * 150 + sizeHeight + 40, 180, 150)];
            ImageViewHeight = y *150 + sizeHeight + 40;
        }else if (x == 1){
         _ImageView = [[UIImageView alloc]initWithFrame:CGRectMake(x * 185 + 5, ImageViewHeight, 180, 150)];
        }
        [_ImageView setImageWithURL:[NSURL URLWithString:model.host_pic]];
        [self.contentView addSubview:_ImageView];
        CGFloat LableTitlesize = CGRectGetMaxY(_ImageView.frame);
        _LableTitle = [[UILabel alloc]initWithFrame:CGRectMake(x * 185 + 5, LableTitlesize, 180, 0)];
        _LableTitle.font = [UIFont systemFontOfSize:17];
        _LableTitle.textAlignment = NSTextAlignmentLeft;
        _LableTitle.numberOfLines = 0;
        _LableTitle.lineBreakMode = NSLineBreakByCharWrapping;
        _LableTitle.text = model.subject;
        CGSize size  = [_LableTitle.text boundingRectWithSize:CGSizeMake(180, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
        _LableTitle.frame = CGRectMake(x * 185 + 5, LableTitlesize, 180, size.height);
        [self.contentView addSubview:_LableTitle];
        if (x == 0) {
            sizeHeight = size.height;
        }
    }
    
    self.heightFloat = ImageViewHeight + sizeHeight;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
