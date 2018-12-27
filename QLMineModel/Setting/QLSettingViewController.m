//
//  QLSettingViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2018/12/10.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLSettingViewController.h"
#import "QLSettingTitleCell.h"

@interface QLSettingViewController ()

@end

@implementation QLSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navBar.title = @"设置";
    self.formManager[@"QLSettingTitleItem"] = @"QLSettingTitleCell";
    [self initForm];
}

- (void)initForm {
    WT(bself);
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    QLSettingTitleItem *itTitle1 = [[QLSettingTitleItem alloc] init];
    itTitle1.titleText = @"账号安全";
    [section0 addItem:itTitle1];
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    [self.formTable reloadData];
}
@end
