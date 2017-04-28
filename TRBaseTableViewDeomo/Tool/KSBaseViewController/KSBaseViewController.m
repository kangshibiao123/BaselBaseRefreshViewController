//
//  KSBaseViewController.m
//  HSH
//
//  Created by kangshibiao on 16/5/30.
//  Copyright © 2016年 kangshibiao. All rights reserved.
//

#import "KSBaseViewController.h"

@interface KSBaseViewController ()

@end

@implementation KSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"----        %@         ",NSStringFromClass([self class]));
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16],NSForegroundColorAttributeName:[UIColor blackColor]}];
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];

}


- (void)setLeftWithImage:(NSString *)imageName action:(SEL)action
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:imageName] style:UIBarButtonItemStylePlain target:self action:action];
}

- (void)setLeftDefultWithNav{
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"fanhui"] style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"home_add"] style:UIBarButtonItemStylePlain target:self action:@selector(barItems)];
}

/**
 *  首页显示只显示右边加号 和 询价功能键 和返回按钮
 *  回调方法
 */

- (void)setLeftDefultAndInquiryWithNav{
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"fanhui"] style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];

    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"home_add"] style:UIBarButtonItemStylePlain target:self action:@selector(barItems)];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"xjsp_hdcp"] style:UIBarButtonItemStylePlain target:self action:@selector(inquiryItems)];
    
    self.navigationItem.rightBarButtonItems = @[item,item2];
}

/**
 *  首页显示只显示右边加号
 *  有回调方法
 */
- (void)setLeftDefultWithNavHome{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"home_add"] style:UIBarButtonItemStylePlain target:self action:@selector(barItems)];
}
/**
 *  右边返回
 *  没有回调方法
 */
- (void)setLeftDefultWithNavBack{
      self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"fanhui"] style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
}
/**
 *
 */
- (void)setLeftWithString:(NSString *)text action:(SEL)action{
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:text style:UIBarButtonItemStylePlain target:self action:action];
}
/**
 * 左边返回按钮 文字
 *
 * @param text   标题名字
 */
- (void)setLeftDefaultWithString:(NSString *)text{
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:text style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];

}
/**
 * 右边按钮 图片
 * @param  imageName  图片名字
 * @param  action     回调事件
 */

- (void)setRightWithImage:(NSString *)imageName action:(SEL)action{
    
    self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:imageName] style:UIBarButtonItemStylePlain target:self action:action];
    
}
/**
 * 右边按钮 文字
 * @param  imageName  图片名字
 * @param  action     回调事件
 */
- (void)setRightWithString:(NSString *)text action:(SEL)action{
 
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:text style:UIBarButtonItemStylePlain target:self action:action];

}

- (void)setRightButtonWithString:(NSString *)text action:(SEL)action{
    UIButton *right = [UIButton buttonWithType:UIButtonTypeCustom];
    right.frame = CGRectMake(0, 0, 50, 50);
    [right addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [right setTitle:text forState:UIControlStateNormal];
    [right setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    right.titleLabel.font = [UIFont systemFontOfSize:14];
    UIBarButtonItem *rightBut = [[UIBarButtonItem alloc]initWithCustomView:right];
    self.navigationItem.rightBarButtonItem = rightBut;
}
/**
 * 注册cell 文字
 * @param  tableView
 * @param  TableVieCell
 */
- (void)registerCell:(UITableView *)tableView TableVieCell:(NSString *)cell{
    [tableView registerNib:[UINib nibWithNibName:cell bundle:nil] forCellReuseIdentifier:cell];
}

- (void)registerCell:(UITableView *)tableView TableVieCellArray:(NSArray *)cell{
    
    [cell enumerateObjectsUsingBlock:^(NSString * obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [tableView registerNib:[UINib nibWithNibName:obj bundle:nil] forCellReuseIdentifier:obj];
    }];
}

- (void)goBack{

    [self.navigationController popViewControllerAnimated:YES];

}

- (void)setGesturesWithNaviForAction:(SEL)action{
    
    UITapGestureRecognizer * PrivateLetterTap=[[UITapGestureRecognizer alloc]initWithTarget:self action:action];
    PrivateLetterTap.numberOfTouchesRequired = 1; //手指数
    PrivateLetterTap.numberOfTapsRequired = 1; //tap次数
    PrivateLetterTap.delegate= self;
    [self.navigationController.navigationBar addGestureRecognizer:PrivateLetterTap];
}

#pragma mark -- TableView 分割线
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}





@end
