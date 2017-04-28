//
//  KSDefaultSearchView.m
//  BigWinner
//
//  Created by kangshibiao on 2017/3/21.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "KSDefaultSearchView.h"

@implementation KSDefaultSearchView

- (void)awakeFromNib{
    [super awakeFromNib];
    self.serachBar.backgroundColor=[UIColor colorWithRed:228.0/255.0f green:241.0/255.0f blue:253.0/255.0f alpha:1.0f];
    //设置透明背景图片
    self.serachBar.backgroundImage=[UIImage imageNamed:@"loginline"];
}

#pragma makr -- UISearchBarDelegate

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
  
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    searchBar.showsCancelButton = YES;
    for (id searchbutton in searchBar.subviews) {
        UIView *view = (UIView *)searchbutton;
        UIButton *cancelButton = (UIButton *)[view.subviews objectAtIndex:2];
        cancelButton.enabled = YES;
        [cancelButton setTitle:@"取消"  forState:UIControlStateNormal];//文字
        break;
    }
    
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    dispatch_async(dispatch_get_main_queue(), ^{
        searchBar.showsCancelButton = NO;
        [searchBar resignFirstResponder];
        searchBar.text = @"";
    });

}

@end
