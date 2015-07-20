//
//  GPInteractModel.h
//  手工课01
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 pop. All rights reserved.
//

#import "GPModel.h"

@interface GPInteractModel : GPModel

/**
 *  互动课程id
 */
@property(nonatomic,copy) NSString *idc;
/**
 *  互动课程名
 */
@property(nonatomic,copy) NSString *subject;
/**
 *  互动课程图片
 */
@property(nonatomic,copy) NSString *host_pic;

@end
