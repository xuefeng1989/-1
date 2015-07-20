//
//  TabBarViewController.m
//  手工客2
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "TabBarViewController.h"
#import "FindViewController.h"
#import "firstViewController.h"
#import "CircleViewController.h"
#import "CourseViewController.h"
#import "MineViewController.h"
#import "messageViewController.h"
#import "selfViewController.h"
#import "dynamicViewController.h"
#import "NewViewController.h"
#import "HotViewController.h"


@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareViewControllers];
}

-(void)prepareViewControllers{

//查找
    firstViewController *marsterVc = [[firstViewController alloc]init];
    dynamicViewController *dynamicVc = [[dynamicViewController alloc]init];
    FindViewController *fineView = [[FindViewController alloc]initViewControllerWithTitleArray:@[@"首页",@"动态"] vcArray:@[marsterVc, dynamicVc]];
    fineView.view.frame = CGRectMake(0, 44, self.view.frame.size.width, [UIScreen mainScreen].bounds.size.height - 44);
    fineView.tabBarItem.title = @"发现";
    fineView.view.backgroundColor = [UIColor whiteColor];
    UIImage *selectedImage = [UIImage imageNamed:@"tb_findD"];
    UIImage *unSelectedImage = [[UIImage imageNamed:@"tb_findS"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    fineView.tabBarItem.image = selectedImage;
    fineView.tabBarItem.selectedImage = unSelectedImage;
    UINavigationController *nvc1 = [[UINavigationController alloc]initWithRootViewController:fineView];
    

  //手工圈
    CircleViewController *circleView = [[CircleViewController alloc]init];
    circleView.tabBarItem.title = @"手工圈";
    circleView.tabBarItem.image = [UIImage imageNamed:@"tb_handD"];
    circleView.tabBarItem.selectedImage = [[UIImage imageNamed:@"tb_handS"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
  //教程
    NewViewController *newController = [[NewViewController alloc]init];
    HotViewController *hotController = [[HotViewController alloc]init];
    CourseViewController *courseView = [[CourseViewController alloc]initViewControllerWithTitleArray:@[@"最新教程",@"最热教程"] vcArray:@[newController,hotController]];
    courseView.view.frame = CGRectMake(0, 44, self.view.frame.size.width, [UIScreen mainScreen].bounds.size.height - 44);
    courseView.tabBarItem.title =@"教程";
    courseView.view.backgroundColor = [UIColor whiteColor];
    courseView.tabBarItem.image = [UIImage imageNamed:@"tb_teachD"];
    courseView.tabBarItem.selectedImage = [[UIImage imageNamed:@"tb_teachS"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nvc2 = [[UINavigationController alloc]initWithRootViewController:courseView];
    
  //我的
    messageViewController *msvc = [[messageViewController alloc]init];
    selfViewController *svc = [[selfViewController alloc]init];
    
    MineViewController *mineView = [[MineViewController alloc]initViewControllerWithTitleArray:@[@"消息通知",@"个人设置"] vcArray:@[msvc,svc]];
    mineView.view.backgroundColor = [UIColor whiteColor];
    mineView.tabBarItem.title =@"个人";
    mineView.tabBarItem.image = [UIImage imageNamed:@"tb_perD"];
    mineView.tabBarItem.selectedImage = [[UIImage imageNamed:@"tb_perS"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nvc3 = [[UINavigationController alloc]initWithRootViewController:mineView];
    
    
    NSArray *array = @[nvc1,circleView,nvc2,nvc3];
    self.viewControllers = array;

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
