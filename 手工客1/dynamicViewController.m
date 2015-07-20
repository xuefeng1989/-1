//
//  dynamicViewController.m
//  手工客1
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "dynamicViewController.h"
#import "AFHTTPRequestOperationManager.h"
#import "DynamicCourseModel.h"
#import "DynamicFirstViewCell.h"

@interface dynamicViewController ()<UITableViewDataSource,UITableViewDelegate>


@property(nonatomic ,retain)NSArray *dataArray;
@property(nonatomic,retain)UITableView *tableView;
@end

@implementation dynamicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadDataSource];
}


-(void)loadDataSource
{
    NSString  *url =@"http://d.shougongke.com/index.php?c=Mobnotice&a=dynami";
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        //转换为词典数据
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        
        NSArray *dataArray = dict[@"data"];
        
        NSMutableArray *totalArray = [[NSMutableArray alloc] init];
        
        for (NSDictionary *datadict in dataArray) {
            
            DynamicCourseModel *model = [[DynamicCourseModel alloc] init];
            [model setValuesForKeysWithDictionary:datadict];
            NSString *type = datadict[@"type"];
            
            if ([type isEqualToString:@"course"]) {
                
                NSDictionary *courseDict = datadict[@"course"][0];
                ChildCourseModel *courseModel = [[ChildCourseModel alloc] init];
                [courseModel setValuesForKeysWithDictionary:courseDict];
                model.courseModel = courseModel;
                
                
            }
            /*
             else if([type isEqualToString:@"follow"]) {
                
                NSDictionary *followDict = datadict[@"follow"][0];
                ChildFollowModel *followModel = [[ChildFollowModel alloc] init];
                [followModel setValuesForKeysWithDictionary:followDict];
                model.followModel = followModel;
                
                
                
            }else if([type isEqualToString:@"circle"]) {
                
                NSDictionary *circleDict = datadict[@"circle"][0];
                ChildCircleModel *circleModel = [[ChildCircleModel alloc] init];
                [circleModel setValuesForKeysWithDictionary:circleDict];
                model.circleModel = circleModel;
                
            }
             */
            [totalArray addObject:model];
            
        }
        _dataArray = [NSArray arrayWithArray:totalArray];
        [self prepareTableView];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}
-(void)prepareTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 597) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DynamicCourseModel *model = [_dataArray objectAtIndex:indexPath.row];
    DynamicFirstViewCell *cell = [[DynamicFirstViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DynamicFirstViewCell" WithModel:model];
    
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
        return  133.0f;
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
