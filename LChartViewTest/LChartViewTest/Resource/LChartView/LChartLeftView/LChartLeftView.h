//
//  LChartLeftView.h
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/23.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LChartLeftView : UIView
@property (nonatomic) double maxValue, minValue;
@property (nonatomic) NSInteger itemCount;
- (void)setMaxValue:(double)maxValue minValue:(double)minValue itemCount:(NSInteger)itemCount;
+(LChartLeftView *)initWithFrame:(CGRect)frame maxValue:(double)maxValue minValue:(double)minValue itemCount:(NSInteger)itemCount;
@end
