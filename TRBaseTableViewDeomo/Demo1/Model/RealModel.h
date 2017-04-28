//
//  RealModel.h
//  BigWinner
//
//  Created by kangshibiao on 2017/4/10.
//  Copyright © 2017年 ZheJiangTianErRuanJian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RealModel : NSObject
@property (nonatomic , copy) NSString              * jobNumber;
@property (nonatomic , copy) NSString              * qQ;
@property (nonatomic , copy) NSString              * streetName;
@property (nonatomic , copy) NSString              * sex;
@property (nonatomic , copy) NSString              * cityName;
@property (nonatomic , copy) NSString              * starLevel;
@property (nonatomic , copy) NSString              * orgName;
@property (nonatomic , copy) NSString              * tradeAreaId;
@property (nonatomic , copy) NSString              * tradeAreaName;
@property (nonatomic , copy) NSString              * entryTime;
@property (nonatomic , copy) NSString              * mobile;
@property (nonatomic , copy) NSString              * email;
@property (nonatomic , copy) NSString              * provinceName;
@property (nonatomic , copy) NSString              * realName;
@property (nonatomic , copy) NSString              * iD;
@property (nonatomic , copy) NSString              * storeAddress;
@property (nonatomic , copy) NSString              * photo;
@property (nonatomic , copy) NSString              * orgId;
@property (nonatomic , copy) NSString              * weixin;
@property (nonatomic , copy) NSString              * countyName;
@property (nonatomic , copy) NSString              * telephone;
@property (nonatomic , copy) NSString              * streetId;

/**
 rows		/// LIST经纪人列表, 详细参数请参考下面Comment
 total				/// 总页数
 page				/// 当前页码
 records			/// 总条数
	Commnet:
 经纪人信息列表(LIST):
 
 ID
 RealName	/// 员工姓名
 JobNumber   /// 工号
 Sex	/// 性别：0女，1男
 StarLevel	/// 星级
 Mobile	/// 手机号
 Email
 QQ
 Weixin
 EntryTime	/// 入职时间
 ProvinceName
 CityName
 CountyName
 StreetName
 StreetId
 TradeAreaId ///商圈
 TradeAreaName ///商圈
 StoreAddress
 OrgId	/// 门店ID
 OrgName
 Telephone /// 门店电话
 Photo /// 头像URL

 */
@end
