//
//  LChartView.h
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/22.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LChartBottomView.h"
#import "LChartLeftView.h"
#import "LChartTopView.h"
@interface LChartView : UIView

@property (nonatomic, strong)LChartBottomView *bottomView;
@property (nonatomic, strong)LChartLeftView *leftView;
@property (nonatomic, strong)LChartTopView *topView;
@property (nonatomic) double mainOriginX, mainOriginY, mainSizeWidth, mainSizeHeight, item_width;
@property (nonatomic) BOOL isGradient, isStock;

@property (nonatomic) NSInteger leftLabelCount, bottomLabelCount;


@property (nonatomic, strong)UIScrollView *mainView;
-(void)initWithFrame:(CGRect)frame itemWidth:(double)itemWidth leftLabelCount:(NSInteger)leftLabelCount bottomLabelCount:(NSInteger)bottomLabelCount leftViewWidth:(double)leftViewWidth bottomViewHeight:(double)bottomViewHeight isStock:(BOOL)isStock isGradient:(BOOL)isGradient;
- (void)subShowViewsHidden:(BOOL)isHidden;
- (void)loadData;
@end
