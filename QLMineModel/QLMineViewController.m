//
//  QLMineViewController.m
//  Project
//
//  Created by 计恩良 on 2018/5/27.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLMineViewController.h"
#import "QLMineHeadCell.h"
#import "WTIconTextCell.h"
#import "QLBusiness.h"
@interface QLMineViewController ()
{
    UILabel *userNameLab;
    UILabel *tipTextLab;
    UIImageView *iconImg;
}
@end

@implementation QLMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.formManager[@"QLMineHeadItem"] = @"QLMineHeadCell";
    self.formManager[@"WTIconTextItem"] = @"WTIconTextCell";
    self.navBar.hidden = YES;
    
    float iXStatus = 0;
    if (iPhoneX) {
        iXStatus = 24;
    }
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WTScreenWidth, 148+24+iXStatus)];
    bgView.backgroundColor = QL_NavBar_BgColor_Yellow;
    [self.view addSubview:bgView];
    //用户名
    userNameLab = [[UILabel alloc] initWithFrame:CGRectMake(21, 24+35+iXStatus, WTScreenWidth-21-82, 19)];
    userNameLab.font = WTFontSys(20);
    userNameLab.text = @"天天兰兰";
    userNameLab.textColor = QL_NavBar_TitleColor_Black;
    [self.view addSubview:userNameLab];
    ///头像
    iconImg = [[UIImageView alloc] initWithFrame:CGRectMake(WTScreenWidth-82, 30+24+iXStatus, 60, 60)];
    iconImg.layer.borderColor = [UIColor whiteColor].CGColor;
    iconImg.layer.borderWidth = 2;
    iconImg.layer.masksToBounds = YES;
    iconImg.backgroundColor = [UIColor redColor];
    [self.view addSubview:iconImg];
    //说明
    tipTextLab = [[UILabel alloc] initWithFrame:CGRectMake(21, userNameLab.bottom+18, 10, 9)];
    tipTextLab.font = WTFontSys(10);
    tipTextLab.text = @"查看或编辑个人主页";
    tipTextLab.textColor = QL_NavBar_TitleColor_Black;
    [self.view addSubview:tipTextLab];
    [tipTextLab sizeToFit];
    
    UIImageView *arrowImg = [[UIImageView alloc] initWithFrame:CGRectMake(tipTextLab.right+11, tipTextLab.top, 6, 9)];
    arrowImg.backgroundColor = [UIColor redColor];
    [self.view addSubview:arrowImg];
    
    //工具栏
    UIView *barView = [[UIView alloc] initWithFrame:CGRectMake(16, 24+108+iXStatus, WTScreenWidth-16-16, 80)];
    barView.layer.cornerRadius = 3;
    barView.layer.masksToBounds = YES;
    barView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:barView];

    
//    [self initForm];
}


- (void)initForm {
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    QLMineHeadItem *itHead = [[QLMineHeadItem alloc] init];
    [section0 addItem:itHead];
    
    WTIconTextItem *it1 = [[WTIconTextItem alloc] init];
    it1.iconImg = [WTUtil createImageFromColor:[UIColor redColor]];
    it1.textString = @"宝宝档案";
    it1.hasArrow = YES;
    [section0 addItem:it1];
    
    WTIconTextItem *it2 = [[WTIconTextItem alloc] init];
    it2.iconImg = [WTUtil createImageFromColor:[UIColor redColor]];
    it2.textString = @"关于我们";
    it2.hasArrow = YES;
    [section0 addItem:it2];
    
    WTIconTextItem *it3 = [[WTIconTextItem alloc] init];
    it3.iconImg = [WTUtil createImageFromColor:[UIColor redColor]];
    it3.textString = @"帮助反馈";
    it3.hasArrow = YES;
    [section0 addItem:it3];
    
    WTIconTextItem *it4 = [[WTIconTextItem alloc] init];
    it4.iconImg = [WTUtil createImageFromColor:[UIColor redColor]];
    it4.textString = @"设置";
    it4.hasArrow = YES;
    [section0 addItem:it4];
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];

    [self.formTable reloadData];
}
@end
