//
//  StockChartDataView.h
//  ZhongJiangVDisk
//
//  Created by liuxiaomin on 16/8/19.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StockChartDataView : UIView
- (void)setTime:(NSString *)time open:(double)open close:(double)close high:(double)high low:(double)low;
@end
