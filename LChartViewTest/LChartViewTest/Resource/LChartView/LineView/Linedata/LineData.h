//
//  LineData.h
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/29.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LineData : NSObject
    @property (nonatomic)double data;
    @property (nonatomic, copy) NSString *time;
    +(LineData *)setData:(double)data time:(NSString *)time;
@end
