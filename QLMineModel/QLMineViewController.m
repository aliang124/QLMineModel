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

@interface QLMineViewController ()
@end

@implementation QLMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.leftItemList = [NSArray array];
    self.formManager[@"QLMineHeadItem"] = @"QLMineHeadCell";
    self.formManager[@"WTIconTextItem"] = @"WTIconTextCell";

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
    [self.formTable reloadEmptyDataSet];
}
@end
