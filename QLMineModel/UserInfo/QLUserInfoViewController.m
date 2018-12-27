//
//  QLUserInfoViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2018/12/27.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLUserInfoViewController.h"
#import "QLUserInfoCell.h"
#import "QLUserIconCel.h"
@interface QLUserInfoViewController ()

@end

@implementation QLUserInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navBar.title = @"个人资料";
    self.formManager[@"QLUserInfoItem"] = @"QLUserInfoCell";
    self.formManager[@"QLUserIconItem"] = @"QLUserIconCel";
    
    WTCustomBarItem *itRight = [[WTCustomBarItem alloc] init];
    itRight.itemStyle = 0;
    itRight.itemTitle = @"个人主页";
    itRight.itemTextColor = QL_NavBar_TitleColor_Black;
    itRight.itemTextFont = [UIFont systemFontOfSize:14];
    itRight.onClick = ^{
    };
    self.navBar.rightItemList = [NSArray arrayWithObject:itRight];
    
    [self initForm];
}

- (void)initForm {
    WT(bself);
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    [section0 addItem:[WTEmptyItem initWithHeight:16]];

    QLUserIconItem *itIcon = [[QLUserIconItem alloc] init];
    itIcon.leftText = @"账号头像";
    [section0 addItem:itIcon];
    
    [section0 addItem:[WTEmptyItem initWithHeight:12]];

    QLUserInfoItem *itNick = [[QLUserInfoItem alloc] init];
    itNick.leftText = @"你的昵称";
    itNick.rightText = @"王者荣耀";
    [section0 addItem:itNick];
    
    [section0 addItem:[WTEmptyItem initWithHeight:12]];

    QLUserInfoItem *itAddress = [[QLUserInfoItem alloc] init];
    itAddress.leftText = @"所在地";
    itAddress.rightText = @"安徽省-合肥市";
    [section0 addItem:itAddress];

    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    
    [self.formTable reloadData];
}

@end
