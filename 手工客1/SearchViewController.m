//
//  SearchViewController.m
//  手工客1
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    [self prepareView];
}

-(void)prepareView
{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 50)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(10, 5, 300, 40)];
    textField.backgroundColor = [UIColor whiteColor];
    [view addSubview:textField];
    UIButton *searchbtn = [UIButton buttonWithType:UIButtonTypeSystem];
    searchbtn.frame = CGRectMake(315, 5, 55, 40);
    [searchbtn setTitle:@"搜索" forState:UIControlStateNormal];
    [searchbtn addTarget:self action:@selector(setTitleClick) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:searchbtn];
}

-(void)setTitleClick{

}


-(BOOL)prefersStatusBarHidden
{
    return YES;
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
