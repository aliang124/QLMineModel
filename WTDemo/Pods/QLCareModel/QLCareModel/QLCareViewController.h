//
//  QLCareViewController.h
//  Project
//
//  Created by 计恩良 on 2018/5/27.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "WTBaseCore.h"
#import "QLBusiness.h"
#import "QLCareBarView.h"

@interface QLCareViewController : QLFormViewController
@property (nonatomic,strong) QLCareBarView *barView;
@property (nonatomic,strong) NSMutableArray *listArray;
@property (nonatomic,assign) int pageIndex;
@property (nonatomic,assign) int totalPage;
@end
