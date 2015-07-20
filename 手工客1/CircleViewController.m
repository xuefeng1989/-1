//
//  CircleViewController.m
//  手工客2
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "CircleViewController.h"

@interface CircleViewController ()



@end

@implementation CircleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self prepareView];
    
}

-(void)prepareView
{
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(30, 100, 310, 50)];
    lable.text = @"老师您好，只做了'发现'与'课程'页面";
    lable.font = [UIFont systemFontOfSize:22];
    [self.view addSubview:lable];
}


-(void)viewWillAppear:(BOOL)animated
{
 //   self.tabBarController.tabBar.hidden = YES;

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
