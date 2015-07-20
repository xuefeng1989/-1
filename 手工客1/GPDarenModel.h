//
//  GPDarenModel.h
//  手工课01
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 pop. All rights reserved.
//

#import "GPModel.h"

#import "GPLevel.h"

@interface GPDarenModel : GPModel

/**
 *  手工圈条数
 */
@property(nonatomic,copy) NSString *circle_count;
/**
 *  手工圈收藏
 */
@property(nonatomic,copy) NSString *circle_collect_count;
/**
 *  关注
 */
@property(nonatomic,copy) NSString *guan_num;
/**
 *  粉丝
 */
@property(nonatomic,copy) NSString *fen_num;
@property(nonatomic,copy) NSString *guan_status;
/**
 *  发布课程
 */
@property(nonatomic,copy) NSString *coursecount;
@property(nonatomic,copy) NSString *coursedraft;
/**
 *  教程收藏
 */
@property(nonatomic,copy) NSString *coursecollect;
/**
 *  用户名
 */
@property(nonatomic,copy) NSString *uname;
/**
 *
 */
@property(nonatomic,copy) NSString *title;
/**
 *  性别
 */
@property(nonatomic,copy) NSString *gender;
/**
 *  籍贯
 */
@property(nonatomic,copy) NSString *region;

@property(nonatomic,copy) NSString *daren;
@property(nonatomic,copy) NSString *hand_teacher;

@property(nonatomic,copy) NSString *avatar;
@property(nonatomic,copy) NSString *bg_image;
@property(nonatomic,copy) NSString *uid;

/**
 *  等级
 */
@property(nonatomic,strong) GPLevel *level;

@end
