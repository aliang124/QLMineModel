//
//  QLMineViewController.m
//  Project
//
//  Created by 计恩良 on 2018/5/27.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLMineViewController.h"
#import "QLMineHeadCell.h"

@interface QLMineViewController ()
@end

@implementation QLMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.leftItemList = [NSArray array];
    self.formManager[@"QLMineHeadItem"] = @"QLMineHeadCell";

    [self setControllerTitle];
    [self initForm];
}

- (void)setControllerTitle {
    self.navBar.title = @"我的";
}

- (void)initForm {
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    QLMineHeadItem *itHead = [[QLMineHeadItem alloc] init];
    [section0 addItem:itHead];
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];

    [self.formTable reloadData];
    [self.formTable reloadEmptyDataSet];
}
@end
