//
//  KSBaseRefreshViewController.m
//  BigWinner
//
//  Created by kangshibiao on 2017/3/15.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "KSBaseRefreshViewController.h"
#import "KSBaseTableViewCell.h"
@interface KSBaseRefreshViewController ()

@end

@implementation KSBaseRefreshViewController

- (NSMutableArray *)datasMutabArray{
    if (!_datasMutabArray) {
        _datasMutabArray = [NSMutableArray array];
    }
    return _datasMutabArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTableView];
    [self getReuqsetData];

}

- (void)initTableView{}

- (void)getReuqsetData{}

/** 添加区头搜索*/
- (void)addHeaderViewSearchView:(void (^)(NSString *serarchText))serachText{
    _defaultSearch = [KSDefaultSearchView initBaseView];
    _defaultSearch.frame = CGRectMake(0, 0, Screen_wide, 40);
    
    dispatch_async(dispatch_get_main_queue(), ^{
        self.myTableView.tableHeaderView = _defaultSearch;
    });
}

- (void)hideKeyboard{
    [self.defaultSearch endEditing:YES];
}

- (void)addMjRefresh:(BOOL)isFlog{
    WeakSelf
    self.myTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [weakSelf base_RefreshHeaderFooter:YES];
    }];
    if (isFlog) {
        self.size = 20;
        self.myTableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
            [weakSelf base_RefreshHeaderFooter:NO];
        }];
    }
   
}

- (void)base_RefreshHeaderFooter:(BOOL)refresh{
    if (refresh) {
        [self.datasMutabArray removeAllObjects];
        [self.myTableView reloadData];
        self.page = 1;
    }else{
        self.page ++;
    }
}

- (void)registerCell:(NSString *)cell {
    [self.myTableView registerNib:[UINib nibWithNibName:cell bundle:nil] forCellReuseIdentifier:cell];
    self.cellId = cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return _base_CellHeight;
}

#pragma mark -- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datasMutabArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return .1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return .1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KSBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellId forIndexPath:indexPath];
    return cell;
}

/** 刷新某个区 */
- (void)reloadSection:(NSInteger)section{
    [self.myTableView reloadSections:[NSIndexSet indexSetWithIndex:section] withRowAnimation:UITableViewRowAnimationNone];
}

/* 刷新单个cell*/
- (void)reloadRow:(NSInteger)row section:(NSInteger)section{
    [self.myTableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:section]] withRowAnimation:UITableViewRowAnimationNone];
}

/** 刷新Cell带动画*/
- (void)reloadRow:(NSInteger)row section:(NSInteger)section animation:(UITableViewRowAnimation)animation{
    [self.myTableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:section]] withRowAnimation:animation];
}

- (void)endRefresh{
    [self.myTableView.mj_header endRefreshing];
    [self.myTableView.mj_footer endRefreshing];
}

/** 吧对应的model 存放在 datasMutabArray中 */
- (void)modelCalss:(Class)aClass dataArray:(NSArray *)dataArray{
    __block id blckAClsaa = aClass;
    [dataArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        blckAClsaa = [aClass whc_ModelWithJson:obj];
        [self.datasMutabArray addObject:blckAClsaa];
    }];
}



@end
