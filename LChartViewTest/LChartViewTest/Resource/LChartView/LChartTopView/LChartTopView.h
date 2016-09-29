//
//  LChartTopView.h
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/23.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StockData.h"
typedef void(^btnsActionBlock)(NSInteger index);
@interface LChartTopView : UIView
@property (nonatomic, strong)StockData *data;
@property (nonatomic, copy)btnsActionBlock btnsActionBlock;
+(LChartTopView *)viewWithframe:(CGRect)frame;
@end
