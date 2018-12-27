//
//  QLSettingViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2018/12/10.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLSettingViewController.h"
#import "QLSettingTitleCell.h"
#import "QLSettingGroupCell.h"
@interface QLSettingViewController ()

@end

@implementation QLSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navBar.title = @"设置";
    self.formManager[@"QLSettingTitleItem"] = @"QLSettingTitleCell";
    self.formManager[@"QLSettingGroupItem"] = @"QLSettingGroupCell";
    [self initForm];
}

- (void)initForm {
    WT(bself);
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    QLSettingTitleItem *itTitle1 = [[QLSettingTitleItem alloc] init];
    itTitle1.titleText = @"账号安全";
    [section0 addItem:itTitle1];
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:@"手机号" forKey:@"leftTitle"];
    [dic setObject:@"13478968900" forKey:@"rightTitle"];
    [dic setObject:@"1" forKey:@"ButtonType"];

    NSMutableDictionary *dic1 = [NSMutableDictionary dictionary];
    [dic1 setObject:@"预产期" forKey:@"leftTitle"];
    [dic1 setObject:@"2018-08-11" forKey:@"rightTitle"];
    [dic1 setObject:@"2" forKey:@"ButtonType"];

    QLSettingGroupItem *itGroup1 = [[QLSettingGroupItem alloc] init];
    itGroup1.dataArray = [NSArray arrayWithObjects:dic,dic1, nil];
    [section0 addItem:itGroup1];
    
    //第三方绑定
    QLSettingTitleItem *itTitle2 = [[QLSettingTitleItem alloc] init];
    itTitle2.titleText = @"第三方绑定";
    [section0 addItem:itTitle2];

    NSMutableDictionary *dic3 = [NSMutableDictionary dictionary];
    [dic3 setObject:@"微信" forKey:@"leftTitle"];
    [dic3 setObject:@"未绑定" forKey:@"rightTitle"];
    [dic3 setObject:@"weixin" forKey:@"IconImage"];
    [dic3 setObject:@"3" forKey:@"ButtonType"];
    
    NSMutableDictionary *dic4 = [NSMutableDictionary dictionary];
    [dic4 setObject:@"QQ" forKey:@"leftTitle"];
    [dic4 setObject:@"已绑定" forKey:@"rightTitle"];
    [dic4 setObject:@"QQ" forKey:@"IconImage"];
    [dic4 setObject:@"3" forKey:@"ButtonType"];

    NSMutableDictionary *dic5 = [NSMutableDictionary dictionary];
    [dic5 setObject:@"微博" forKey:@"leftTitle"];
    [dic5 setObject:@"未绑定" forKey:@"rightTitle"];
    [dic5 setObject:@"weibo" forKey:@"IconImage"];
    [dic5 setObject:@"4" forKey:@"ButtonType"];

    QLSettingGroupItem *itGroup2 = [[QLSettingGroupItem alloc] init];
    itGroup2.dataArray = [NSArray arrayWithObjects:dic3,dic4,dic5, nil];
    [section0 addItem:itGroup2];

    
    
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    [self.formTable reloadData];
}
@end
