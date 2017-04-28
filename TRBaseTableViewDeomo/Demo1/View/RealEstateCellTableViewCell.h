//
//  RealEstateCellTableViewCell.h
//  BigWinner
//
//  Created by kangshibiao on 2017/3/7.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RealModel.h"

@interface RealEstateCellTableViewCell : KSBaseTableViewCell

/** */
@property (weak, nonatomic) IBOutlet UILabel *name;
/** */
@property (weak, nonatomic) IBOutlet UILabel *phone;
/** */
@property (weak, nonatomic) IBOutlet UILabel *storeAddress;
/** */
@property (weak, nonatomic) IBOutlet UILabel *distanceArea;
/** */
@property (weak, nonatomic) IBOutlet UILabel *starLevel;

/** */
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;

/** */
@property (strong, nonatomic) RealModel *model;



@end
