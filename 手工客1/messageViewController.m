//
//  messageViewController.m
//  手工客1
//
//  Created by qianfeng on 15-7-17.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "messageViewController.h"

@interface messageViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic ,retain)UITableView *tableView;

@end

@implementation messageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareTableView];
}



-(void)prepareTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 603) style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

-(NSInteger )numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
            return 6;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *array = @[@"我的",@"评论",@"回复",@"@我",@"私信",@"手工圈"];
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"mine"];
    if (indexPath.row == 0) {
        cell.textLabel.text = @"我的";
        cell.imageView.image = [UIImage imageNamed:@"ws_guide_personal"];
    }else
    {
        cell.textLabel.text = array[indexPath.row];
    }
    
return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10.0f;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.0f;
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
