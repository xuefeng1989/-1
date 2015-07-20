//
//  GPModel.m
//  手工课01
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 pop. All rights reserved.
//

#import "GPModel.h"

@implementation GPModel

-(id)initWithDict:(NSDictionary *)dict{

    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

+(id)modelWithDict:(NSDictionary *)dict{

    return [[self alloc]initWithDict:dict];
}

@end
