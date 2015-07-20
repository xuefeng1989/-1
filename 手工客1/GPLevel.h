//
//  GPLevel.h
//  手工课01
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 pop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPModel.h"

@interface GPLevel : GPModel

@property(nonatomic,copy) NSString *level;
@property(nonatomic,copy) NSString *experience;
@property(nonatomic,copy) NSString *next_level_need;

@end
