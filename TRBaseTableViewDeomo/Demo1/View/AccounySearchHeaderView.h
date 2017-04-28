//
//  AccounySearchHeaderView.h
//  TwinkleTwinkle
//
//  Created by kangshibiao on 2017/4/10.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface AccounySearchHeaderView :KSBaseXIBView <UISearchBarDelegate>

/** */
@property (weak, nonatomic) IBOutlet UISearchBar *serachBar;

/** */
@property (copy, nonatomic) void (^serachBlock)(NSString *searchText);


@end
