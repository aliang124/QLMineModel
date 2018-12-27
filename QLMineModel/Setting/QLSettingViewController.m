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
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    [self.formTable reloadData];
}
@end
