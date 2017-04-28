//
//  KSBaseRefreshViewController.h
//  BigWinner
//
//  Created by kangshibiao on 2017/3/15.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSDefaultSearchView.h"
#import "KSBaseViewController.h"
@interface KSBaseRefreshViewController : KSBaseViewController
/** */
@property ( nullable,strong, nonatomic) NSMutableArray *datasMutabArray;

/** */
@property (weak, nonatomic,nullable) IBOutlet UITableView *myTableView;

/** */
@property (nullable,copy, nonatomic) NSString *cellId;

/** 页数 默认 0*/
@property (assign, nonatomic) NSInteger page;

/** 条数 默认 20*/
@property (assign, nonatomic) NSInteger size;

/**cell高度*/
@property (assign, nonatomic) CGFloat base_CellHeight;

/**  搜索*/
@property (strong, nonatomic,nullable) KSDefaultSearchView *defaultSearch;

/** 配置Cell*/
- (void)initTableView;

/** 数据源*/
- (void)getReuqsetData;

/** 注册cell*/
- (void)registerCell:(nullable NSString *)cell;

/** 添加区头搜索*/
- (void)addHeaderViewSearchView:(nullable void (^)( NSString * _Nonnull serarchText))serachText;

/** 添加下拉刷新 加载   isFlog NO 只添加下拉刷新*/
- (void)addMjRefresh:(BOOL)isFlog;

/** 下拉刷新加载更多*/
- (void)base_RefreshHeaderFooter:(BOOL)refresh NS_REQUIRES_SUPER;

/** 结束刷新*/
- (void)endRefresh;

/** 默认Cell*/
- (nullable UITableViewCell *)tableView:(nullable UITableView *)tableView cellForRowAtIndexPath:(nullable NSIndexPath *)indexPath;

/** 刷新某个区*/
- (void)reloadSection:(NSInteger)section;

/** 刷新某个cell不带动画*/
- (void)reloadRow:(NSInteger)row section:(NSInteger)section;

/** 刷新Cell带动画*/
- (void)reloadRow:(NSInteger)row section:(NSInteger)section animation:(UITableViewRowAnimation)animation;

/** 吧对应的model 存放在 datasMutabArray中 */
- (void)modelCalss:(Class)aClass dataArray:(NSArray *)dataArray;

@end
