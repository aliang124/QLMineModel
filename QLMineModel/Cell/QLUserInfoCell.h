//
//  QLUserInfoCell.h
//  WQLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "WTBaseCell.h"

@interface QLUserInfoItem : RETableViewItem
@property (nonatomic,copy) NSString *leftText;
@property (nonatomic,copy) NSString *rightText;
@end

@interface QLUserInfoCell : RETableViewCell
@property (strong, readwrite, nonatomic) QLUserInfoItem *item;
@end
