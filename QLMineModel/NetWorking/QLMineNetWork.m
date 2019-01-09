//
//  QLMineNetWork.m
//  WTDemo
//
//  Created by 计恩良 on 2019/1/9.
//  Copyright © 2019年 计恩良. All rights reserved.
//
//个人中心
#define QL_NetWorking_AccountCenter @"/account/index"

#import "QLMineNetWork.h"
#import "WTBaseCore.h"
#import "QLBusiness.h"

@implementation QLMineNetWork
+ (void)getAccountCenterInfo:(NSString *)phone password:(NSString *)pass successHandler:(void (^)(id json))successHandler failHandler:(void (^)(NSString *message))failHandler {
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    [param setObject:phone forKey:@"phone"];
    [QLNetWorkingUtil postDataWithHost:QL_Net_Host Path:QL_NetWorking_AccountCenter Param:param success:^(id json) {
        if (successHandler) {
            successHandler(json);
        }
    } fail:^(NSString *message) {
        if (failHandler) {
            failHandler(message);
        }
    }];
}


+ (void)loginWithPhone:(NSString *)phone password:(NSString *)pass successHandler:(void (^)(id json))successHandler failHandler:(void (^)(NSString *message))failHandler {
    NSMutableDictionary *param = [NSMutableDictionary dictionary];
    [param setObject:phone forKey:@"phone"];
    [param setObject:pass forKey:@"password"];
    [param setObject:@"1111111111" forKey:@"clientId"];
    [QLNetWorkingUtil postDataWithHost:QL_Net_Host Path:QL_NetWorking_AccountCenter Param:param success:^(id json) {
        if (successHandler) {
            successHandler(json);
        }
    } fail:^(NSString *message) {
        if (failHandler) {
            failHandler(message);
        }
    }];
}
@end
