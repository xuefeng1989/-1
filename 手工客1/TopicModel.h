//
//  TopicModel.h
//  ShouGongKe
//
//  Created by qianfeng on 15/4/23.
//  Copyright (c) 2015年 ZYF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPModel.h"
/**手工专题数据模型*/
@interface TopicModel : GPModel
@property(nonatomic, copy) NSString * idc;
@property(nonatomic, copy) NSString * subject;
@property(nonatomic, copy) NSString * Ym;
@property(nonatomic, copy) NSString * d;
@property(nonatomic, copy) NSString * w;
@property(nonatomic, copy) NSString * page;
@property(nonatomic, strong) NSArray *pic;
@end
