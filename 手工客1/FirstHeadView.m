//
//  FirstHeadView.m
//  手工客1
//
//  Created by qianfeng on 15-7-15.
//  Copyright (c) 2015年 gzc. All rights reserved.
//

#import "FirstHeadView.h"
#import "UIImageView+AFNetworking.h"
#import "UIButton+AFNetworking.h"
#import "NavModel.h"
#import "MyImageBtn.h"
#import "AdvModel.h"
#import "URLButton.h"

@interface FirstHeadView ()<UIScrollViewDelegate>
{
    UIScrollView *_scrollView;
    UIPageControl *_pageControl;
    NSArray *_imageNames;
    NSTimer *timer;
}
@end

@implementation FirstHeadView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.frame = frame;
        [self prepareHeadView];
    }
    return self;
}

-(void)prepareHeadView
{
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 120)];
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.bounces = NO;
    _scrollView.pagingEnabled = YES;
    _scrollView.delegate = self;
    [self addSubview:_scrollView];
    
    _pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(140, 100, 100, 10)];
    _pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    _pageControl.pageIndicatorTintColor = [UIColor blackColor];
    _pageControl.userInteractionEnabled = NO;
    [self addSubview:_pageControl];
    
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ImageChange) userInfo:nil repeats:YES];
}

-(void)ImageChange
{
    static int i = 0;
    if (i<_imageNames.count) {
        _scrollView.contentOffset = CGPointMake(i++ * self.frame.size.width, 0);
        _pageControl.currentPage = i-1;
    }
    else i = 0;
}


-(void)assginImageToScrolView:(NSArray *)imageNames
{
    _pageControl.numberOfPages = imageNames.count;
    _scrollView.contentSize =CGSizeMake(imageNames.count *self.frame.size.width, 120);
    _imageNames = [NSArray arrayWithArray:imageNames];
    for (int i = 0; i < imageNames.count; i++) {
        UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(i * self.frame.size.width, 0, self.frame.size.width, 120)];
 //       NSLog(@"%@",[imageNames objectAtIndex:i]);
        [imageview setImageWithURL:[NSURL URLWithString:[imageNames objectAtIndex:i]]];
        [_scrollView addSubview:imageview];
    }
    
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x / self.frame.size.width;
    _pageControl.currentPage = index;
}


-(void)assginImageToButton:(NSArray *)navModel
{
    for (int i = 0; i < navModel.count; i ++) {
        NavModel *model = navModel[i];
        MyImageBtn *btn = [[MyImageBtn alloc]initWithFrame:CGRectMake(i * 95,120, 90, 90) andTitle:model.subject andURLImage:model.host_pic];
        btn.tag = 100 + i;
        [btn addTarget:self action:@selector(NavButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
    }
}

-(void)NavButtonClick:(UIButton *)btn
{
    
}
-(void)assginImageToAdvButton:(NSArray *)advModel
{
    for (int i = 0; i < advModel.count; i ++) {
        AdvModel *model = advModel[i];
        URLButton *advButton = [[URLButton alloc]initWithFrame:CGRectMake(i * 186, 210, 185, 90) andTitle:@"" andURLImage:model.ad_img];
        advButton.tag = 120 + i;
        [advButton addTarget:self action:@selector(AdvModelClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:advButton];
    }
    
}
-(void)AdvModelClick:(UIButton *)btn
{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
