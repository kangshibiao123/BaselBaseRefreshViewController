//
//  RealEstateVC.m
//  BigWinner
//
//  Created by kangshibiao on 2017/2/20.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "RealEstateVC.h"

#import "RealEstateCellTableViewCell.h"
#import "TowSerarchView.h"
#import "RealModel.h"
#import "KSRequestManager.h"
#import "WHC_KeyboardManager.h"
#import "AccounySearchHeaderView.h"
@interface RealEstateVC ()

//@property (strong, nonatomic) TowSerarchView *serarchView;
/** 顾问姓名*/
@property (strong, nonatomic) NSString *realName;
@property (strong, nonatomic) AccounySearchHeaderView *searchHeaderView;


@end

@implementation RealEstateVC

- (AccounySearchHeaderView *)searchHeaderView{
    if (!_searchHeaderView) {
        _searchHeaderView = [AccounySearchHeaderView initBaseView];
    }
    return _searchHeaderView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.realName = @"";
    /** 添加刷新*/
    [self addMjRefresh:YES];
    [self setLeftDefultWithNav];
    [[WHC_KeyboardManager share] addMonitorViewController:self];
    [self getReuqsetData];

}

- (void)base_RefreshHeaderFooter:(BOOL)refresh{
    /** 调用父类方法*/
    [super base_RefreshHeaderFooter:refresh];
    [self getReuqsetData];
}

- (void)getReuqsetData{
    [KSRequestManager gitRequestWithUrlString:[NSString stringWithFormat:@"agent/getagentlist?AgentName=%@&StoreName=%@&page=%ld&rows=%ld",self.realName,@"",(long)self.page,(long)self.size] parameter:nil success:^(id responseObject) {
        NSLog(@"---%@",responseObject);
        NSArray *array = KSDIC(KSDIC(responseObject, @"result"), @"rows");
     
        [self modelCalss:[RealModel class] dataArray:array];
        [self.myTableView reloadData];
        [self endRefresh];
    } failure:^(id error) {
        [self endRefresh];
    }];
}

/** 父类自动调用 */
- (void)initTableView{
    [self registerCell:@"RealEstateCellTableViewCell"];
    self.base_CellHeight = 126;
    WeakSelf
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        weakSelf.myTableView.tableHeaderView = weakSelf.searchHeaderView;
    });
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RealEstateCellTableViewCell *cell = (RealEstateCellTableViewCell *)[super tableView:tableView cellForRowAtIndexPath:indexPath];
    cell.model = self.datasMutabArray[indexPath.row];
    return cell;
}

#pragma mark -- UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}


@end
