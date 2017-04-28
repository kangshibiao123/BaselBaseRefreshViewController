//
//  KSBaseTableViewCell.h
//  FrameWork
//
//  Created by kangshibiao on 16/8/15.
//  Copyright © 2016年 ZheJiangTianErRuanJian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KSBaseTableViewCell : UITableViewCell

//数据源
@property (strong, nonatomic) id data;

- (void)setViewCornerRadiusViews:(NSArray <UIView *>*)view floatCoriner:(float)floatCoriner;
@end
