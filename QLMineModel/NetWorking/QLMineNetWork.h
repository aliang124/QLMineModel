//
//  QLMineNetWork.h
//  WTDemo
//
//  Created by 计恩良 on 2019/1/9.
//  Copyright © 2019年 计恩良. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface QLMineNetWork : NSObject
/*  获取个人中心数据
 ** phone:手机号
 ** pass:登录密码
 */
+ (void)getAccountCenterInfo:(NSString *)phone password:(NSString *)pass successHandler:(void (^)(id json))successHandler failHandler:(void (^)(NSString *message))failHandler;
/*  登录
 ** phone:手机号
 ** pass:登录密码
 */
+ (void)loginWithPhone:(NSString *)phone password:(NSString *)pass successHandler:(void (^)(id json))successHandler failHandler:(void (^)(NSString *message))failHandler;
@end
