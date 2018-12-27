//
//  QLSettingGroupCell.h
//  WQLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "WTBaseCell.h"
typedef NS_ENUM(NSInteger, ButtonType) {
    ButtonType_LeftRightText = 1,
    ButtonType_LeftRightTextArrow = 2
};

@interface QLSettingGroupItem : WTBaseItem
@property (nonatomic,copy) NSArray *dataArray;
@end

@interface QLSettingGroupCell : WTBaseCell
@property (strong, readwrite, nonatomic) QLSettingGroupItem *item;
@end
