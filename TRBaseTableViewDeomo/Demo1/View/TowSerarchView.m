//
//  TowSerarchView.m
//  BigWinner
//
//  Created by kangshibiao on 2017/3/7.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "TowSerarchView.h"

@implementation TowSerarchView

- (void)awakeFromNib{
    [super awakeFromNib];
    [self.firstField setValue:[NSNumber numberWithInt:8] forKey:@"paddingLeft"];
    self.firstField.returnKeyType = UIReturnKeyYahoo;
    UIView *leftview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.firstField.frame.size.width - (self.firstField.frame.size.width - 20), 0)];
    self.firstField.leftViewMode = UITextFieldViewModeAlways;
    self.firstField.leftView = leftview;
    
    [self.secondField setValue:[NSNumber numberWithInt:8] forKey:@"paddingLeft"];
    self.secondField.returnKeyType = UIReturnKeyYahoo;
    UIView *leftview1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.secondField.frame.size.width - (self.secondField.frame.size.width - 20), 0)];
    self.secondField.leftViewMode = UITextFieldViewModeAlways;
    self.secondField.leftView = leftview1;
    
    [self.firstField.layer setCornerRadius:8];
    [self.firstField.layer setMasksToBounds:YES];
    [self.secondField.layer setCornerRadius:8];
    [self.secondField.layer setMasksToBounds:YES];
    
    [self.firstField setValue:UIColorFromRGB(0x1f8bcb) forKeyPath:@"_placeholderLabel.textColor"];
    self.firstField.textColor = UIColorFromRGB(0x1f8bcb);
    
    self.secondField.textColor = UIColorFromRGB(0x1f8bcb);
    [self.secondField  setValue:UIColorFromRGB(0x1f8bcb) forKeyPath:@"_placeholderLabel.textColor"];

    
}

#pragma mark -- UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if (textField.tag == 0) {
        [self.firstField resignFirstResponder];
        if (self.firstBlock) {
            self.firstBlock(textField.text);
        }
    }else{
        [self.secondField resignFirstResponder];
        if (self.secondBlock) {
            self.secondBlock(textField.text);
        }
    }

    return YES;
}

- (void)layoutSubviews{
    [super layoutSubviews];
}
@end
