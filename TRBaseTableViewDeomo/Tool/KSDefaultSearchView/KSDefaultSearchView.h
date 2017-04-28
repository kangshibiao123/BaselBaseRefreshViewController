//
//  KSDefaultSearchView.h
//  BigWinner
//
//  Created by kangshibiao on 2017/3/21.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSBaseXIBView.h"
@interface KSDefaultSearchView : KSBaseXIBView <UISearchBarDelegate>
/** */
@property (weak, nonatomic) IBOutlet UISearchBar *serachBar;
@end
