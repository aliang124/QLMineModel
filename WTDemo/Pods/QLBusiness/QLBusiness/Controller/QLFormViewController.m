//
//  QLFormViewController.h
//  QLBusiness
//
//  Created by jienliang on 17/6/23.
//  Copyright (c) 2017年 jienliang. All rights reserved.
//

#import "QLFormViewController.h"
#import "WTDefine.h"
#import "QLDefine.h"

@interface QLFormViewController ()

@end

@implementation QLFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.formTable.frame = CGRectMake(0, WT_NavBar_Height, WTScreenWidth, WTScreenHeight-WT_NavBar_Height);
}
@end
