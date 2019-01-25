//
//  QLHomeBannerCell.h
//  QLHomeModel
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//
#import "QLHomeBannerCell.h"
#import "WTBaseCore.h"
#import "QLBusiness.h"
#import "WTCyclePagerView.h"
#import "WTPageControl.h"
#import "WTCyclePagerViewCell.h"
#import "UIImageView+WebImage.h"

@implementation QLHomeBannerItem
- (id)init{
    if (self = [super init]) {
        self.cellHeight = 152 * QL_MULPITLE;
        self.hasBottomLine = NO;
        self.canHighlighted = NO;
    }
    return self;
}

@end

@interface QLHomeBannerCell()<WTCyclePagerViewDataSource, WTCyclePagerViewDelegate>
{
}
@property (nonatomic, strong) WTCyclePagerView *pagerView;
@property (nonatomic, strong) WTPageControl *pageControl;
@end

@implementation QLHomeBannerCell

- (void)cellDidLoad
{
    [super cellDidLoad];
    self.backgroundColor = [UIColor whiteColor];
    [self addPagerView];
    [self addPageControl];
}

- (void)addPagerView {
    WTCyclePagerView *pagerView = [[WTCyclePagerView alloc]init];
    pagerView.frame = CGRectMakes(0, 0, 360, 152);
    pagerView.isInfiniteLoop = YES;
    pagerView.autoScrollInterval = 3.0;
    pagerView.dataSource = self;
    pagerView.delegate = self;
    [pagerView registerClass:[WTCyclePagerViewCell class] forCellWithReuseIdentifier:@"cellId"];
    [self.contentView addSubview:pagerView];
    _pagerView = pagerView;
}

- (void)addPageControl {
    WTPageControl *pageControl = [[WTPageControl alloc]init];
    pageControl.frame = CGRectMake(0, CGRectGetHeight(_pagerView.frame) - 20, CGRectGetWidth(_pagerView.frame), 20);
    pageControl.currentPageIndicatorSize = CGSizeMake(6, 6);
    pageControl.pageIndicatorSize = CGSizeMake(6, 6);
//    pageControl.currentPageIndicatorTintColor = [UIColor redColor];
//    pageControl.pageIndicatorTintColor = [UIColor grayColor];
    [_pagerView addSubview:pageControl];
    _pageControl = pageControl;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}

- (void)loadData {
    _pageControl.numberOfPages = self.item.datas.count;
    [_pagerView reloadData];
}
- (void)cellWillAppear
{
    [super cellWillAppear];
    [self loadData];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}

- (nonnull WTCyclePagerViewLayout *)layoutForPagerView:(nonnull WTCyclePagerView *)pageView {
    WTCyclePagerViewLayout *layout = [[WTCyclePagerViewLayout alloc]init];
    layout.itemSize = CGSizeMake(CGRectGetWidth(pageView.frame)*1, CGRectGetHeight(pageView.frame)*1);
//    layout.itemSpacing = 10;
    layout.itemHorizontalCenter = YES;
    return layout;
}

- (NSInteger)numberOfItemsInPagerView:(nonnull WTCyclePagerView *)pageView {
    return self.item.datas.count;
}

- (nonnull __kindof UICollectionViewCell *)pagerView:(nonnull WTCyclePagerView *)pagerView cellForItemAtIndex:(NSInteger)index {
    WTCyclePagerViewCell *cell = [pagerView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndex:index];
    [cell.bgImageView setWebImageWithUrl:self.item.datas[index] placeHolder:nil];
    return cell;
}

- (void)pagerView:(WTCyclePagerView *)pageView didScrollFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex {
    _pageControl.currentPage = toIndex;
    //[_pageControl setCurrentPage:newIndex animate:YES];
    NSLog(@"%ld ->  %ld",fromIndex,toIndex);
}
@end
