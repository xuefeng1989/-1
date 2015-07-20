//
//  FirstHeadView.h
//  手工客1
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstHeadView : UIView

@property(nonatomic ,retain)UIViewController *controller;

-(void)assginImageToScrolView:(NSArray *)imageNames;

-(void)assginImageToButton:(NSArray *)navModel;

-(void)assginImageToAdvButton:(NSArray *)advModel;

@end
