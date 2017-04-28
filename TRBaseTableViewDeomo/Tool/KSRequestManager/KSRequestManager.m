//
//  KSRequestManager.m
//  HSH
//
//  Created by kangshibiao on 16/6/14.
//  Copyright © 2016年 Mac. All rights reserved.
//
#define URL_MANURL  @"http://114.55.41.107:199/"
#import "KSRequestManager.h"
#import <AFNetworkActivityIndicatorManager.h>
@implementation KSRequestManager

+ (void)postRequestWithUrlString:(NSString *)url
                       parameter:(id)parameter
                         success:(void (^)(id responseObject))success
                         failure:(void (^) (id error))failure{
    AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setTimeoutInterval:5];

    [manager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain", nil]];
    
    [manager POST:[NSString stringWithFormat:@"%@%@",URL_MANURL,url] parameters:parameter progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if ([KSDIC(responseObject, @"status")isEqualToString:@"success"]) {
            success(responseObject);
        }else{
//            [MBProgressHUD showErrorMessage:KSDIC(responseObject, @"message")];
            failure (responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        [MBProgressHUD showErrorMessage:noNetwork];

    }];
}
/**
 * @param get 请求
 *
 * @param url       请求地址的url
 * @param parameter 请求参数
 * @return success   请求成功
 * @return failure   失败
 */
+ (void)gitRequestWithUrlString:(NSString *)url
                      parameter:(id)parameter
                        success:(void (^)(id responseObject))success
                        failure:(void (^) (id error))failure{
    AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
    [manager.requestSerializer setTimeoutInterval:5];
    
    [manager GET:[NSString stringWithFormat:@"%@%@",URL_MANURL,url] parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (![[responseObject allKeys]containsObject:@"status"]) {
            success(responseObject);
            return ;
        }
        if ([KSDIC(responseObject, @"status") isEqualToString:@"success"]) {
            success (responseObject);

        }else{
//            [MBProgressHUD showErrorMessage:KSDIC(responseObject, @"result")];
            failure(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
//        [MBProgressHUD showErrorMessage:noNetwork];

    }];
    
}
/**
 * @param images 请求上传图片
 *
 * @param url       请求地址的url
 * @param parameter 请求参数
 * @param success   请求成功
 * @param failure   失败
 */
+ (void)upLodImageRequestWithUrlString:(NSString *)url
                             parameter:(id)parameter
                                images:(NSArray *)images
                               success:(void (^)(id responseObject))success
                               failure:(void (^) (NSError *error))failure{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain", nil]];
    [manager POST:[NSString stringWithFormat:@"%@%@",URL_MANURL,url] parameters:parameter constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [images enumerateObjectsUsingBlock:^(id  obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            [formData appendPartWithFileData:UIImageJPEGRepresentation(obj, .2) name:@"upufdmfile" fileName:@"upufdmfile.jpeg" mimeType:@"image/jpeg"];
            
        }];
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
 
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];

}

@end
