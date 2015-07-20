//
//  GPSubject.h
//  手工课01
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 pop. All rights reserved.
//

#import "GPModel.h"

@interface GPSubject : GPModel

/**
 *  注意关键字id
 */
@property(nonatomic,copy) NSString *ID;
@property(nonatomic,copy) NSString *subject;
@property(nonatomic,strong) NSArray *pic;
@property(nonatomic,copy) NSString *Ym;
@property(nonatomic,copy) NSString *d;
@property(nonatomic,copy) NSString *w;
@property(nonatomic,copy) NSString *page;

@end
