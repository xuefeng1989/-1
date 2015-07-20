//
//  GPInteractModel.m
//  手工课01
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 pop. All rights reserved.
//

#import "GPInteractModel.h"

@implementation GPInteractModel

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.idc = value;
    }
}

@end
