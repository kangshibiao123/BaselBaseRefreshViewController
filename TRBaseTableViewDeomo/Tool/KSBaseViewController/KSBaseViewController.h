//
//  KSBaseViewController.h
//  HSH
//
//  Created by kangshibiao on 16/5/30.
//  Copyright © 2016年 kangshibiao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^MyHoem)();

@interface KSBaseViewController : UIViewController<UIGestureRecognizerDelegate>
@property (copy, nonatomic) MyHoem homeBlock;

/**
 *  左边返回按钮
 *
 * @param imageName 图片名字 字符串类型
 * @param action    回到方法
 */
- (void)setLeftWithImage:(NSString *)imageName action:(SEL)action;

/**
 *  左边返回右边加号
 *  没有回调方法
 */
- (void)setLeftDefultWithNav;
/**
 *  首页显示只显示右边加号
 *  没有回调方法
 */

- (void)setLeftDefultWithNavHome;

/**
 *  返回按钮  右边加号功能键  询价功能键
 *  没有回调方法
 */
- (void)setLeftDefultAndInquiryWithNav;


/**
 *  右边返回
 *  没有回调方法
 */
- (void)setLeftDefultWithNavBack;

/**
 * 左边返回按钮 文字
 * @param text   标题名字
 * @param action 回调方法
 */
- (void)setLeftWithString:(NSString *)text action:(SEL)action;

/**
 * 左边返回按钮 文字
 *
 * @param text   标题名字
 */
- (void)setLeftDefaultWithString:(NSString *)text;

/**
 * 右边按钮 图片
 * @param  imageName  图片名字
 * @param  action     回调事件
 */
- (void)setRightWithImage:(NSString *)imageName action:(SEL)action;

/**
 * 右边按钮 文字
 * @param  imageName  图片名字
 * @param  action     回调事件
 */
- (void)setRightWithString:(NSString *)text action:(SEL)action;
- (void)setRightButtonWithString:(NSString *)text action:(SEL)action;


/**
 * 注册cell 文字
 * @param  tableView
 * @param  TableVieCell
 */
- (void)registerCell:(UITableView *)tableView TableVieCell:(NSString *)cell;

/**
 * 注册一大堆cell
 * @param  tableView
 * @param  TableVieCell
 */
- (void)registerCell:(UITableView *)tableView TableVieCellArray:(NSArray *)cell;

- (void)setGesturesWithNaviForAction:(SEL)action;


#pragma mark -- TbaleView 分割线
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
@end
