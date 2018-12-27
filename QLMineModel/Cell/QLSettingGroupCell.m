//
//  QLSettingGroupCell.h
//  QLMineModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "QLSettingGroupCell.h"
#import "WTBaseCore.h"

@implementation QLSettingGroupItem
- (id)init{
    if (self = [super init]) {
        self.cellHeight = 48;
        self.bgColor = [UIColor whiteColor];
        self.hasBottomLine = NO;
        self.canHighlighted = NO;
    }
    return self;
}

@end

@interface QLSettingGroupCell()
{
}
@end

@implementation QLSettingGroupCell

- (void)cellDidLoad
{
    [super cellDidLoad];
    [self performSelector:@selector(onCreateSubView) withObject:nil afterDelay:0.3];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}

- (void)cellWillAppear
{
    [super cellWillAppear];
    self.backgroundColor = self.item.bgColor;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}

- (void)onCreateSubView {
    [self.contentView removeAllSubviews];
    self.item.cellHeight = self.item.dataArray.count * 48;
    self.height = self.item.cellHeight;
    int arrowWidth = 6;
    
    UIView *bgV = [[UIView alloc] initWithFrame:CGRectMake(16, 0, WTScreenWidth-16-16, self.height)];
    bgV.userInteractionEnabled = NO;
    bgV.layer.cornerRadius = 4;
    bgV.layer.borderWidth = 1;
    bgV.layer.borderColor = WTColorHex(0xEEEEE5).CGColor;
    [self.contentView addSubview:bgV];
    
    for (int i = 0; i < self.item.dataArray.count; i++) {
        NSDictionary *dic = self.item.dataArray[i];
        
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(16, i*48, WTScreenWidth-16-16, 48)];
        btn.tag = i;
        [btn addTarget:self action:@selector(btnPress:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:btn];
        
        if (i!=self.item.dataArray.count-1) {
            UIImageView *lineImg = [[UIImageView alloc] initWithFrame:CGRectMake(12, 47, btn.width-12-12, 1)];
            lineImg.backgroundColor = WTColorHex(0xEEEEE5);
            [btn addSubview:lineImg];
        }
        
        UILabel *titleLab = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, btn.width-16-16, btn.height)];
        titleLab.font = WTFontSys(14);
        titleLab.textColor = QL_UserName_TitleColor_Black;
        titleLab.text = [WTUtil strRelay:dic[@"leftTitle"]];
        [btn addSubview:titleLab];

        UILabel *descLab = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, btn.width-16-16, btn.height)];
        descLab.font = WTFontSys(12);
        descLab.textAlignment = NSTextAlignmentRight;
        descLab.textColor = QL_DescColor_Gray;
        descLab.text = [WTUtil strRelay:dic[@"rightTitle"]];
        [btn addSubview:descLab];
        
        ButtonType btnType = [[WTUtil strRelay:dic[@"ButtonType"]] intValue];
        if (btnType==ButtonType_LeftRightText) {
            descLab.width = btn.width-16-16;
        } else if (btnType==ButtonType_LeftRightTextArrow) {
            UIImageView *arrowImg = [[UIImageView alloc] initWithFrame:CGRectMake(btn.width-16-arrowWidth, (48-10)/2, arrowWidth, 10)];
            [arrowImg setImage:[UIImage imageNamed:@"arrowImg"]];
            [btn addSubview:arrowImg];
            descLab.width = btn.width-16-16-arrowWidth-15;
        }
    }
}

- (void)btnPress:(UIButton *)bbb {
    NSLog(@"aaaaaaaaa");
}
@end
