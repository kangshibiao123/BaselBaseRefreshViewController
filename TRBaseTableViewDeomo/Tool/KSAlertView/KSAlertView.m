//
//  KSAlertView.m
//  BigWinner
//
//  Created by kangshibiao on 2017/3/16.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "KSAlertView.h"

@implementation KSAlertView

- (void)show{
    UIView *bgView= [[ UIView alloc]initWithFrame:CGRectMake(0, 0, Screen_wide, Screen_heigth)];
    bgView.backgroundColor = [UIColor lightGrayColor];
    bgView.alpha = .8;
    bgView.tag = 1221;
    UIWindow * wiondow = [[UIApplication sharedApplication].delegate window];
    [wiondow addSubview:bgView];
    [wiondow addSubview:self];
    [wiondow makeKeyWindow];
}

- (void)awakeFromNib{
    [super awakeFromNib];
    [self.bgView.layer setCornerRadius:5];
    [self.determine.layer setCornerRadius:5];
    [self.canBtn.layer setCornerRadius:5];
}

- (IBAction)buttons:(UIButton *)sender{
    if (sender.tag == 0) {
        //取消
        [self removeSubView]
        ;
    }else{
        //确定
        if (_buttonsClick) {
            _buttonsClick(sender);
        }
    }
      [self removeSubView];
}


- (void)removeSubView{
    UIWindow * wiondow = [[UIApplication sharedApplication].delegate window];
    UIView *bgView = [wiondow  viewWithTag:1221];
    [bgView removeFromSuperview];
    [self removeFromSuperview];
}

@end
