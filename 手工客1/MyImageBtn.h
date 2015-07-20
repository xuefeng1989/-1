//
//  MyImageBtn.h
//  手工客1
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyImageBtn : UIButton

- (instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)titie andImage:(NSString *)iamgeName;

- (instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)titie andURLImage:(NSString *)iamgeName;

@end
