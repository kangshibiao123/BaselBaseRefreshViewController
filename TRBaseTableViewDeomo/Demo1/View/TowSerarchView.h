//
//  TowSerarchView.h
//  BigWinner
//
//  Created by kangshibiao on 2017/3/7.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TowSerarchView : KSBaseXIBView<UITextFieldDelegate>
/** */
@property (weak, nonatomic) IBOutlet UITextField *firstField;
/** */
@property (weak, nonatomic) IBOutlet UITextField *secondField;

/** 第一个搜索框回调*/
@property (copy, nonatomic) void (^firstBlock) (NSString *text);
/** 第二个搜索框回调*/
@property (copy, nonatomic) void (^secondBlock) (NSString *text);



@end
