//
//  AdvModel.m
//  手工客1
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "AdvModel.h"

@implementation AdvModel


-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.idc = value;
    }
}

@end
