//
//  DemoViewController.m
//  TRBaseTableViewDeomo
//
//  Created by kangshibiao on 2017/4/10.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "DemoViewController.h"
#import "DemoTableViewCell.h"
#import "RealEstateVC.h"
#import "KSAlertAboutView.h"
@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}



- (void)initTableView{
    
    [self registerCell:@"DemoTableViewCell"];
    self.base_CellHeight = 100;
    self.datasMutabArray = [@[@"demo1",@"demo2",@"3"] mutableCopy];
    self.tabBarController.tabBar.hidden = YES;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DemoTableViewCell *cell = (DemoTableViewCell *)[super tableView:tableView cellForRowAtIndexPath:indexPath];
    cell.textLabel.text = self.datasMutabArray[indexPath.row];
    return cell;
}

#pragma mark -- UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        RealEstateVC * real = [RealEstateVC new];
        [self.navigationController pushViewController:real animated:YES];
    }else if (indexPath.row ==1){
//        KSAlertAboutView * alear = [KSAlertAboutView initBaseView];
//        alear.frame = [UIScreen mainScreen].bounds;
//        alear.buttonsClick = ^(UIButton *sender){
//            
//        };
//        [alear show];
    }
}


@end
