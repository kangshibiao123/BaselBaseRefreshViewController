//
//  KSBaseTableViewCell.m
//  FrameWork
//
//  Created by kangshibiao on 16/8/15.
//  Copyright © 2016年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "KSBaseTableViewCell.h"

@implementation KSBaseTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.layer.masksToBounds = YES;
}
/** 设置圆角*/
- (void)setViewCornerRadiusViews:(NSArray <UIView *>*)view floatCoriner:(float)floatCoriner;
{
    [view enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.layer.cornerRadius = floatCoriner;
        obj.layer.masksToBounds = YES;
    }];
}


@end
