//
//  HotViewController.m
//  手工客1
//
//  Created by qianfeng on 15-7-16.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "HotViewController.h"
#import "listModel.h"
#import "listViewCell.h"
#import "AFHTTPRequestOperationManager.h"
@interface HotViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain)listViewCell *cell;
@property(nonatomic,retain)UITableView *tableView;
@property (nonatomic ,retain)NSArray *dataSource;


@end

@implementation HotViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadDataSource];
}


-(void)loadDataSource
{
    NSString *urlString =@"http://m.shougongke.com/index.php?&c=Course&a=CourseList&gcate=&id=&type=2";
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    //此处设置后返回的默认是NSData的数据
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        //转换为词典数据
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        //NSLog(@"dict = %@",dict);
        
        NSMutableArray *tmpDataArray = [[NSMutableArray alloc] init];
        
        NSDictionary *dataDict = [dict objectForKey:@"data"];
        NSArray *arr  = [dataDict objectForKey:@"list"];
        
        for (NSDictionary *appDict in arr) {
            listModel *modle = [listModel modelWithDict:appDict];
            [tmpDataArray addObject:modle];
        }
        _dataSource = [NSArray arrayWithArray:tmpDataArray];
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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    listModel *model = [_dataSource objectAtIndex:indexPath.row];
    _cell = [[listViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"listViewCell" WithModel:model];
    
    return _cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return _cell.rowHeight;
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
