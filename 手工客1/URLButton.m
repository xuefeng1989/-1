//
//  URLButton.m
//  手工客1
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "URLButton.h"
#import "UIButton+AFNetworking.h"

@implementation URLButton

- (instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)titie andURLImage:(NSString *)iamgeName
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setTitle:titie forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.highlighted = NO;
        
        [self setImageForState:UIControlStateNormal withURL:[NSURL URLWithString:iamgeName]];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    return self;
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    
    CGFloat imageW = contentRect.size.width;
    CGFloat imageX = 0;
    CGFloat imageY = 5;
    CGFloat imageH = contentRect.size.height;
    
    return CGRectMake(imageX, imageY, imageW, imageH);
}


@end
