
//
//  LChartLeftCell.m
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/23.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "LChartLeftCell.h"

@interface LChartLeftCell ()
@property (weak, nonatomic) IBOutlet UIView *line;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineBottom;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelBottom;

@end
@implementation LChartLeftCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)setLabelText:(NSString *)text
{
    _label.text = text;
}
- (void)reFrameWithHeight:(double)height
{
    _lineBottom.constant = (height-1)/2.0;
    _labelBottom.constant = (height-18)/2.0;
}
//- (void)reBottomFrame
//{
//    
//}
- (void)reTopFrameWithHeight:(double)height
{
    _lineBottom.constant = height-1;
    _labelBottom.constant = height-18;
}


@end
