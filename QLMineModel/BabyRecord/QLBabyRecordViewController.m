//
//  QLBabyRecordViewController.m
//  WTDemo
//
//  Created by 计恩良 on 2018/12/10.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "QLBabyRecordViewController.h"

@interface QLBabyRecordViewController ()

@end

@implementation QLBabyRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.title = @"宝贝档案";
    [self initForm];
}

- (void)initForm {
    WT(bself);
    NSMutableArray *sectionArray = [NSMutableArray array];
    RETableViewSection *section0 = [RETableViewSection section];
    
    
    [sectionArray addObject:section0];
    [self.formManager replaceSectionsWithSectionsFromArray:sectionArray];
    
    [self.formTable reloadData];
}

@end
