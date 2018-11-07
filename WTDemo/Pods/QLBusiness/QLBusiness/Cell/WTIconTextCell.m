//
//  QLMineHeadCell.h
//  QLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "WTIconTextCell.h"
#import "WTBaseCore.h"

@implementation WTIconTextItem
- (id)init{
    if (self = [super init]) {
        self.cellHeight = 50;
    }
    return self;
}

@end

@interface WTIconTextCell()
{
    UIImageView *iconImg;
    UILabel *textLab;
}
@end

@implementation WTIconTextCell

- (void)cellDidLoad
{
    [super cellDidLoad];
    //图标
    iconImg = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 30, 30)];
    [self.contentView addSubview:iconImg];
    //文本
    textLab = [[UILabel alloc] initWithFrame:CGRectMake(iconImg.right+10, 10, WTScreenWidth-iconImg.right-10-23-5, 30)];
    textLab.font = WTFontSys(15);
    textLab.textColor = WT_Color_TextBlackColor;
    [self.contentView addSubview:textLab];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}

- (void)cellWillAppear
{
    [super cellWillAppear];
    self.backgroundColor = self.item.bgColor;
    [iconImg setImage:self.item.iconImg];
    textLab.text = [WTUtil strRelay:self.item.textString];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}

@end
