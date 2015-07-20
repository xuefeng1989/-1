//
//  FindViewController.m
//  手工客2
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "FindViewController.h"
#import "SearchViewController.h"
#import "EditViewController.h"

#import "firstViewController.h"
#import "dynamicViewController.h"
//#import "MenuViewController.h"

@interface FindViewController ()<MenuViewControllerDelegate>

@property(nonatomic,strong)UIView *headView;

//@property(nonatomic,retain)MenuViewController  *menuvc;
@end

@implementation FindViewController

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
    
    leftBtn = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"pp_mypage_edit"] style:UIBarButtonItemStylePlain target:self action:@selector(leftButtonClick)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(rightButtonClick)];
    //initWithImage:[UIImage imageNamed:@"pp_mypage_edit"] style:UIBarButtonItemStylePlain target:self action:@selector(rightButtonClick)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    self.navigationItem.title = @"手工客";
    
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
    SearchViewController *svc = [[SearchViewController alloc]init];
   [self presentViewController:svc animated:NO completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
-(void)menuViewController:(id)vc currentPageChanged:(NSInteger)pageIndex{
    
    
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
