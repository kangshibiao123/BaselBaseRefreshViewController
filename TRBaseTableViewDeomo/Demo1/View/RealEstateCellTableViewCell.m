//
//  RealEstateCellTableViewCell.m
//  BigWinner
//
//  Created by kangshibiao on 2017/3/7.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "RealEstateCellTableViewCell.h"

@implementation RealEstateCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(RealModel *)model{
    self.name.text = model.realName;
    self.phone.text = model.mobile;
    self.storeAddress.text = model.orgName;
    self.distanceArea.text = [NSString stringWithFormat:@"%@%@%@%@",model.provinceName,model.cityName,model.countyName,model.storeAddress];
    self.starLevel.text = model.starLevel;
//    [self.headerImageView sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@%@",URL_MANURL,model.photo]] placeholderImage:KSPLAIMAGE];
    [self setViewCornerRadiusViews:@[self.headerImageView] floatCoriner:8.f];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
