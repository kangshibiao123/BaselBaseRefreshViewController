//
//  KSAlertAboutView.h
//  BigWinner
//
//  Created by kangshibiao on 2017/3/17.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSAlertView.h"
@interface KSAlertAboutView : KSAlertView

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
/** */
@property (weak, nonatomic) IBOutlet UIImageView *iocImageView;

/** 更换资源*/
- (void)upDataMessageText:(NSString *)text icoImageView:(UIImage *)icoImage canButtonText:(NSString *)canText determineButton:(NSString *)determineText;
@end
