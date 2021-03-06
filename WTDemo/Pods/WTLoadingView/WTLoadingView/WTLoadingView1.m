//
//  WTLoadingView1.m
//  WTDemo
//
//  Created by 计恩良 on 2018/11/18.
//  Copyright © 2018年 计恩良. All rights reserved.
//

#import "WTLoadingView1.h"
#import "WTAnimalImageView.h"
#import "WTLoadFailView.h"

@interface WTLoadingView1 ()
@property (strong, nonatomic) IBOutlet WTAnimalImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@end

@implementation WTLoadingView1

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        int imgH = 32;
        int imgW = 32;
        int labelHeight = 13;
        int labelImageOffset = 7;
        
        float top = (frame.size.height-imgH-labelHeight-labelImageOffset)/2;
        float offsetX = (frame.size.width-imgW)/2;
        
        _imageView = [[WTAnimalImageView alloc] initWithFrame:CGRectMake(offsetX, top, imgW, imgH)];
        [_imageView setImage:[UIImage imageNamed:@"WTLoading.bundle/loadingBig.png"]];
        [self addSubview:_imageView];
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, _imageView.frame.origin.y+_imageView.frame.size.height+labelImageOffset, frame.size.width, labelHeight)];
        _titleLabel.font = [UIFont systemFontOfSize:12];
        _titleLabel.text = @"正在载入中";
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLabel];
        
        [_imageView rotate360DegreeWithImageView];
    }
    return self;
}

#pragma mark - 便利方法

+ (void)showLoadingInView:(UIView *)view
{
    //隐藏所有的加载失败视图
    [WTLoadFailView hideAllFailForView:view];
    //显示加载中视图
    WTLoadingView1 *loadingView = [[WTLoadingView1 alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)];
    [loadingView showInView:view];
}

+ (void)showLoadingInView:(UIView *)view top:(float)top
{
    //隐藏所有的加载失败视图
    [WTLoadFailView hideAllFailForView:view];
    //显示加载中视图
    WTLoadingView1 *loadingView = [[WTLoadingView1 alloc] initWithFrame:CGRectMake(0, top, view.frame.size.width, view.frame.size.height)];
    [loadingView showInView:view];
}

+ (void)hideLoadingForView:(UIView *)view
{
    WTLoadingView1 *loadingView = [self loadingForView:view];
    if (loadingView) {
        [loadingView hide];
    }
}

+ (void)hideAllLoadingForView:(UIView *)view
{
    NSEnumerator *reverseSubviews = [view.subviews reverseObjectEnumerator];
    for (UIView *subview in reverseSubviews) {
        if ([subview isKindOfClass:self]) {
            [(WTLoadingView1 *)subview hideNoAnimation];
        }
    }
}

+ (WTLoadingView1 *)loadingForView:(UIView *)view
{
    NSEnumerator *reverseSubviews = [view.subviews reverseObjectEnumerator];
    for (UIView *subview in reverseSubviews) {
        if ([subview isKindOfClass:self]) {
            return (WTLoadingView1 *)subview;
        }
    }
    return nil;
}

#pragma mark - 实例方法

- (void)showInView:(UIView *)view
{
    if (!view) {
        return ;
    }
    if (self.superview != view) {
        [self removeFromSuperview];
        [view addSubview:self];
        [view bringSubviewToFront:self];
    }
}

- (void)hide
{
    self.alpha = 1.0;
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha = 0;
    }completion:^(BOOL finished) {
        [self hideNoAnimation];
    }];
}

- (void)hideNoAnimation
{
    [self removeFromSuperview];
}

@end
