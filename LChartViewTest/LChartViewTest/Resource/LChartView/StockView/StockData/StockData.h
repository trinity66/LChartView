//
//  StockData.h
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/22.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StockData : NSObject
@property (nonatomic)double open, close, high, low;
@property (nonatomic, copy) NSString *time;
+ (StockData *)setOpen:(double)open close:(double)close low:(double)low high:(double)high time:(NSString *)time;
@end
