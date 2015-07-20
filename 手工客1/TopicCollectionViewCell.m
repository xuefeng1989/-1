//
//  TopicCollectionViewCell.m
//  ShouGongKe
//
//  Created by qianfeng on 15/4/24.
//  Copyright (c) 2015年 ZYF. All rights reserved.
//

#import "TopicCollectionViewCell.h"
#import "UIImageView+AFNetworking.h"


@interface TopicCollectionViewCell()
@property(nonatomic, strong) UIImageView * leftBigImageView;
@property(nonatomic, strong) UIImageView * right1ImageView;
@property(nonatomic, strong) UIImageView * right2ImageView;
@property(nonatomic, strong) UIImageView * right3ImageView;
@property(nonatomic, strong) UIImageView * right4ImageView;

@property(nonatomic, strong) UILabel *titleLabel;
@end
@implementation TopicCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
    [self initUI];
}
-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initUI];
    }
    return self;
}
#pragma mark UI
-(void)initUI
{
//    CGFloat prentWidth = CGRectGetWidth(self.frame);
    
    _leftBigImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 185, 200)];
    [self.contentView addSubview:self.leftBigImageView];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(self.leftBigImageView.frame), CGRectGetWidth(self.frame), 40)];
    _titleLabel.textColor = [UIColor blackColor];
    [self.contentView addSubview:_titleLabel];
    
    //创建right4个imageView
 //   CGFloat rightWidth = prentWidth / 4 - 3;
    _right1ImageView = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.leftBigImageView.frame)+ 1, 0, 90, 100)];
    [self.contentView addSubview:self.right1ImageView];
    
    self.right2ImageView = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.right1ImageView.frame) + 1, 0, 90, 100)];
    [self.contentView addSubview:self.right2ImageView];
    
    _right3ImageView = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.leftBigImageView.frame)+ 1, 100, 90, 100)];
    [self.contentView addSubview:self.right3ImageView];
    _right4ImageView = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.right3ImageView.frame) + 1,100, 90, 100)];
    [self.contentView addSubview:self.right4ImageView];
    
}
#pragma mark
-(void)setImages:(NSArray*)imgArray
{
    [self.leftBigImageView setImageWithURL:[NSURL URLWithString:imgArray[0]] placeholderImage:[UIImage imageNamed:@"sgk_course_default_120"]];
    [self.right1ImageView setImageWithURL:[NSURL URLWithString:imgArray[1]] placeholderImage:[UIImage imageNamed:@"sgk_course_default_120"]];
    [self.right2ImageView setImageWithURL:[NSURL URLWithString:imgArray[2]] placeholderImage:[UIImage imageNamed:@"sgk_course_default_120"]];
    [self.right3ImageView setImageWithURL:[NSURL URLWithString:imgArray[3]] placeholderImage:[UIImage imageNamed:@"sgk_course_default_120"]];
    [self.right4ImageView setImageWithURL:[NSURL URLWithString:imgArray[4]] placeholderImage:[UIImage imageNamed:@"sgk_course_default_120"]];
}
-(void)setTitle:(NSString *)title
{
    self.titleLabel.text = title;
}
@end
