//
//  KSAlertAboutView.m
//  BigWinner
//
//  Created by kangshibiao on 2017/3/17.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "KSAlertAboutView.h"

@implementation KSAlertAboutView

- (void)upDataMessageText:(NSString *)text icoImageView:(UIImage *)icoImage canButtonText:(NSString *)canText determineButton:(NSString *)determineText{
    self.messageLabel.text = text;
    self.iocImageView.image = icoImage;
    [self.canBtn setTitle:canText forState:UIControlStateNormal];
    [self.determine setTitle:determineText forState:UIControlStateNormal];
}



@end
