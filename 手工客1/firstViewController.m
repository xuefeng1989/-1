//
//  firstViewController.m
//  手工客1
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "firstViewController.h"
#import "FirstHeadView.h"
#import "AFHTTPRequestOperationManager.h"
#import "slideModel.h"
#import "NavModel.h"
#import "AdvModel.h"
#import "GPInteractModel.h"
#import "MyfirstHeadCell.h"
#import "BaseTableViewCell.h"
#import "GPBuyModel.h"
#import "MysecondViewCell.h"
#import "TopicModel.h"
#import "TopicCollectionViewCell.h"
#import "darenTableViewCell.h"
#import "GPDarenModel.h"

@interface firstViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    BaseTableViewCell *cell;
}
@property(nonatomic,retain)UITableView *tableView;
@property(nonatomic,retain)NSMutableArray *dataSourse;
@property(nonatomic,retain)NSArray *headImages;
@property(nonatomic,retain)NSMutableArray *navDataArray;
@property(nonatomic,retain)NSMutableArray *advDataArray;

@end

@implementation firstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self prepareTableView];
    [self loadDataSourse];
}

-(void)loadDataSourse
{
    
    NSString  *url =@"http://m.shougongke.com/index.php?&c=index&a=indexnew&vid=9&";
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        //转换为词典数据
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        //NSLog(@"dict = %@",dict);
        
        //存储头大图数据
        NSMutableArray *tmpDataArray = [[NSMutableArray alloc] init];
       //存储头下方按钮数据
        _navDataArray = [[NSMutableArray alloc]init];
        //存储 闪购，课堂
        _advDataArray = [[NSMutableArray alloc]init];
        //课堂 cell数据
        NSMutableArray *classDataArray = [[NSMutableArray alloc]init];
        NSMutableArray *DataArray = [[NSMutableArray alloc]init];
        
        NSMutableArray *productsDataArray = [[NSMutableArray alloc]init];
        
        NSMutableArray *topicDataArray = [[NSMutableArray alloc]init];
        
        NSDictionary *arr = [dict objectForKey:@"data"];
            //头按钮
            NSArray *navArr = [arr objectForKey:@"nav"];
        for (NSDictionary *navDic in navArr) {
            NavModel *navModel = [NavModel modelWithDict:navDic];
            [_navDataArray addObject:navModel];
        }
        //闪购，课堂
        NSArray *advArr = [arr objectForKey:@"adv"];
        for (NSDictionary *advDic in advArr) {
            AdvModel *advModel = [AdvModel modelWithDict:advDic];
            [_advDataArray addObject:advModel];
           
        }
        
        //cell 数据
        NSArray *classArr = [arr objectForKey:@"classs"];
        for (NSDictionary *classDic in classArr) {
            GPInteractModel *classModel = [GPInteractModel modelWithDict:classDic];
            [classDataArray addObject:classModel];
        }
         [DataArray addObject:classDataArray];
        _dataSourse = [NSMutableArray arrayWithArray:DataArray];
        
        
        NSArray *productsArr = [arr objectForKey:@"products"];
        for (NSDictionary *productsDic in productsArr) {
            GPBuyModel *productsModel = [GPBuyModel modelWithDict:productsDic];
            [productsDataArray addObject:productsModel];
        }
        
        [_dataSourse addObject:productsDataArray];
        
        NSArray *topicArr = [arr objectForKey:@"topic"];
        
        for (NSDictionary *topicDic in topicArr) {
            TopicModel *topModel = [TopicModel modelWithDict:topicDic];
            [topicDataArray addObject:topModel];
        }
        [_dataSourse addObject:topicDataArray];
        
        
        NSDictionary *darenDic = [arr objectForKey:@"daren"];
        GPDarenModel *darenModle = [GPDarenModel modelWithDict:darenDic];
        [_dataSourse addObject:darenModle];

        
            //头大图
            NSArray *slideArray = [arr objectForKey:@"slide"];
            //slide 中的数据
            for (NSDictionary *slidedict in slideArray) {
                  slideModel *model = [slideModel modelWithDict:slidedict];
                  NSString *string = model.host_pic;
                 [tmpDataArray addObject:string];
           
        }
        _headImages = [NSArray arrayWithArray:tmpDataArray];
        
       
        
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
    
    
    FirstHeadView *headView = [[FirstHeadView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 300)];
    [headView assginImageToScrolView:_headImages];
    [headView assginImageToButton:_navDataArray];
    [headView assginImageToAdvButton:_advDataArray];
    headView.controller = self;
    _tableView.tableHeaderView = headView;
//    [self loadDataSourse];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _dataSourse.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
    cell = [[MyfirstHeadCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyfirstHeadCell" WithModelArray:_dataSourse[0]];
    }else if (indexPath.section == 1){
        NSArray *buyArr = _dataSourse[1];
        GPBuyModel *buyMode = buyArr[2];
        cell = [[MysecondViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MysecondViewCell" WithModel:buyMode];
    }else if (indexPath.section == 2){
        NSArray *topicArray = _dataSourse[2];
        TopicModel *topModel = topicArray[0];
      TopicCollectionViewCell *cell1 = [[TopicCollectionViewCell alloc]initWithFrame:CGRectMake(5, 0, 365, 200)];
        [cell1 setImages:topModel.pic];
        [cell1 setTitle:topModel.subject];
        return cell1;
    }else if (indexPath.section == 3){
         GPDarenModel *darenModel = _dataSourse[3];
         cell = [[darenTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"darenTableViewCell" WithModel:darenModel];
    }
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
         return 430.f;
    }else if(indexPath.section == 1)
    {
        return 240.f;
    }else if (indexPath.section == 2){
        return 230.f;
    }else if (indexPath.section == 3){
        return 220.f;
    }
    return 0;
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
