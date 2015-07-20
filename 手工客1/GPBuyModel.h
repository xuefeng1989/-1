//
//  GPBuyModel.h
//  手工课01
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 pop. All rights reserved.
//

#import "GPModel.h"

@interface GPBuyModel : GPModel
/**
 *  产品名
 */
@property(nonatomic,copy) NSString *subject;
/**
 *  产品价格
 */
@property(nonatomic,copy) NSString *price;
/**
 *  产品开始抢购时间
 */
@property(nonatomic,copy) NSNumber *start_time;
/**
 *  产品抢购截止时间
 */
@property(nonatomic,copy) NSNumber *end_time;
/**
 *  产品图片
 */
@property(nonatomic,copy) NSString *host_pic;
/**
 *  产品id
 */
@property(nonatomic,copy) NSString *idc;

@end
