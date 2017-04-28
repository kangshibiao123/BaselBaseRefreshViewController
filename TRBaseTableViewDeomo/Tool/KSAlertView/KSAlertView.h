//
//  KSAlertView.h
//  BigWinner
//
//  Created by kangshibiao on 2017/3/16.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KSAlertView : KSBaseXIBView
/** */
@property (weak, nonatomic) IBOutlet UIView *bgView;
/** */
@property (weak, nonatomic) IBOutlet UIButton *determine;
/** */
@property (weak, nonatomic) IBOutlet UIButton *canBtn;
/** */
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

/** */
@property (copy, nonatomic) void (^buttonsClick)(UIButton *sender);
- (IBAction)buttons:(UIButton *)sender;

- (void)show;

@end
