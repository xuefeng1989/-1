//
//  DynamicCourseModel.h
//  ShouGongKe
//
//  Created by qianfeng on 15/4/24.
//  Copyright (c) 2015年 ZYF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChildCourseModel : NSObject
@property(nonatomic,copy) NSString * hand_id;
@property(nonatomic,copy) NSString * zhuti;
@property(nonatomic,copy) NSString * host_pic;
@property(nonatomic,copy) NSString * visible;
@property(nonatomic,copy) NSString * user_name;
@property(nonatomic,copy) NSString * head_pic;

@end

@interface ChildFollowModel : NSObject
@property(nonatomic,copy) NSString * hand_daren;
@property(nonatomic,copy) NSString * level;
@property(nonatomic,copy) NSString * scores;
@property(nonatomic,copy) NSString * user_name;
@property(nonatomic,copy) NSString * follow_status;
@property(nonatomic,copy) NSString * user_id;
@property(nonatomic,copy) NSString * head_pic;
@end

@interface ChildCircleModel : NSObject
@property(nonatomic,copy) NSString * circle_id;
@property(nonatomic,copy) NSString * message;
@property(nonatomic,copy) NSString * username;
@property(nonatomic,copy) NSString * i_type;
@property(nonatomic,copy) NSString * host_pic;
@property(nonatomic,copy) NSString * head_pic;
@end

@interface DynamicCourseModel : NSObject
@property(nonatomic, copy) NSString * user_id;
@property(nonatomic, copy) NSString * user_name;
@property(nonatomic, copy) NSString * hand_daren;
@property(nonatomic, copy) NSString * msgtoid;
@property(nonatomic, copy) NSString * level;
@property(nonatomic, copy) NSString * scores;
@property(nonatomic, copy) NSString * head_pic;
@property(nonatomic, copy) NSString * type;
@property(nonatomic, copy) NSString * event_action;
@property(nonatomic, copy) NSString * event_message;
@property(nonatomic, copy) NSString * timeline;

@property(nonatomic, copy) NSString * to_next;
@property(nonatomic, copy) NSString * pmid;

@property(nonatomic, strong) ChildCourseModel *courseModel;
@property(nonatomic, strong) ChildFollowModel *followModel;
@property(nonatomic, strong) ChildCircleModel *circleModel;


@end
