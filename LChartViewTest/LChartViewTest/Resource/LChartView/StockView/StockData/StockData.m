//
//  StockData.m
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/22.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "StockData.h"

@implementation StockData

+ (StockData *)setOpen:(double)open close:(double)close low:(double)low high:(double)high time:(NSString *)time
{
    StockData *data = [[StockData alloc] init];
    data.open = open;
    data.close = close;
    data.low = low;
    data.high = high;
    if (time) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyyMMddHHmmss"];
        NSDate *date = [formatter dateFromString:time];
        [formatter setDateFormat:@"HH:mm:ss"];
        time = [formatter stringFromDate:date];
    }
    data.time = time;
    return data;
}
@end
