//
//  ViewController.m
//  TRBaseTableViewDeomo
//
//  Created by kangshibiao on 2017/4/10.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "ViewController.h"
#import "DemoViewController.h"
#import "KSNavigationController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
}

- (IBAction)mends:(id)sender{
    KSNavigationController * nav  = [[KSNavigationController alloc]initWithRootViewController:[DemoViewController new]];
  
    UITabBarController *barBarController = [[UITabBarController alloc]init];
    UIWindow * wiod = [[UIApplication sharedApplication].delegate window];
    barBarController.viewControllers = @[nav];

    wiod.rootViewController = barBarController;

    [wiod makeKeyWindow];
}


@end
