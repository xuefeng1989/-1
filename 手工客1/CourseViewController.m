//
//  CourseViewController.m
//  手工客2
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "CourseViewController.h"



@interface CourseViewController ()


//@property(nonatomic,strong)UIView *headView;

@end

@implementation CourseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self prepareHeadView];
}

-(BOOL)prefersStatusBarHidden
{
    return YES;
}

-(void)prepareHeadView
{
    
   UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"pp_mypage_edit"] style:UIBarButtonItemStylePlain target:self action:@selector(leftButtonClick)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithTitle:@"分类" style:UIBarButtonItemStylePlain target:self action:@selector(rightButtonClick)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    Mybutton = [[MyImageBtn alloc]initWithFrame:CGRectMake(0, 40, 185, 80) andTitle:@"发教程" andImage:@"createTeach"];
    Mybutton.hidden = YES;
    Mybutton.backgroundColor = [UIColor whiteColor];
    Mybutton.alpha = 0.9;
    [self.view addSubview:Mybutton];
    
    sendbutton = [[MyImageBtn alloc]initWithFrame:CGRectMake(185, 40, 190, 80) andTitle:@"发手工圈" andImage:@"creatGroupAdd"];
    sendbutton.backgroundColor = [UIColor whiteColor];
    sendbutton.hidden = YES;
    sendbutton.alpha = 0.9;
    [self.view addSubview:sendbutton];
}


-(void)leftButtonClick
{
    Mybutton.hidden = !Mybutton.hidden;
    sendbutton.hidden = !sendbutton.hidden;
    [self.view bringSubviewToFront:Mybutton];
    [self.view bringSubviewToFront:sendbutton];
}

-(void)rightButtonClick
{
}


-(void)mainBtnClick
{
}

-(void)dynamicBtnClick
{
}

#pragma 数据加载



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
