//
//  QLUserIconCel.h
//  WQLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "WTBaseCell.h"

@interface QLUserIconItem : RETableViewItem
@property (nonatomic,copy) NSString *leftText;
@end

@interface QLUserIconCel : RETableViewCell
@property (strong, readwrite, nonatomic) QLUserIconItem *item;
@end