//
//  TopicCollectionViewCell.h
//  ShouGongKe
//
//  Created by qianfeng on 15/4/24.
//  Copyright (c) 2015年 ZYF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCell.h"
/**手工专题cell*/
@interface TopicCollectionViewCell : BaseTableViewCell

@property(nonatomic,retain)NSArray *images;

-(void)setImages:(NSArray*)imgArray;
-(void)setTitle:(NSString *)title;

@end
