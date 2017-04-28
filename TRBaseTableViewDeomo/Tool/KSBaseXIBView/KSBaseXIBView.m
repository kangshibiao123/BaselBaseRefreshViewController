//
//  KSBaseXIBView.m
//  TwinkleTwinkle
//
//  Created by kangshibiao on 16/9/28.
//  Copyright © 2016年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "KSBaseXIBView.h"

@implementation KSBaseXIBView

+ (instancetype)initBaseView{
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil]lastObject];
}

- (void)awakeFromNib{
    [super awakeFromNib];
}


@end
