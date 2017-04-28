//
//  AccounySearchHeaderView.m
//  TwinkleTwinkle
//
//  Created by kangshibiao on 2017/4/10.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "AccounySearchHeaderView.h"

@implementation AccounySearchHeaderView


- (void)awakeFromNib{
    [super awakeFromNib];
    self.serachBar.backgroundColor=[UIColor colorWithRed:228.0/255.0f green:241.0/255.0f blue:253.0/255.0f alpha:1.0f];
    //设置透明背景图片
    self.serachBar.backgroundImage=[UIImage imageNamed:@"loginline"];
}

#pragma makr -- UISearchBarDelegate



- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    if (self.serachBlock) {
        self.serachBlock(searchBar.text);
    }
}

-(BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar{
    NSLog(@"-----%d",searchBar.tag);

    if (searchBar.tag == 9999) {
        searchBar.showsCancelButton = YES;
        return YES;
    }
    return NO;
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    if (searchBar.tag == 9999) {
        searchBar.showsCancelButton = NO;
        [searchBar resignFirstResponder];

    }

}

@end
