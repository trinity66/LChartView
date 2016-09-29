//
//  LineChartDataView.m
//  ZhongJiangVDisk
//
//  Created by liuxiaomin on 16/8/19.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "LineChartDataView.h"

@interface LineChartDataView ()
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *data;

@end
@implementation LineChartDataView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)awakeFromNib
{
    [super awakeFromNib];
    self.layer.borderColor = [UIColor redColor].CGColor;
}
- (void)setTime:(NSString *)time data:(double)data
{
    _time.text = time;
    _data.text = [NSString stringWithFormat:@"数值:%.02f",data];
}
@end
