//
//  LineData.m
//  LChartViewTest
//
//  Created by shijian01 on 16/9/29.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "LineData.h"

@implementation LineData
+(LineData *)setData:(double)data time:(NSString *)time
    {
        LineData *lineData = [[LineData alloc] init];
        lineData.data = data;
        if (time) {
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"yyyyMMddHHmmss"];
            NSDate *date = [formatter dateFromString:time];
            [formatter setDateFormat:@"HH:mm:ss"];
            time = [formatter stringFromDate:date];
        }
        lineData.time = time;
        return lineData;
    }
@end
