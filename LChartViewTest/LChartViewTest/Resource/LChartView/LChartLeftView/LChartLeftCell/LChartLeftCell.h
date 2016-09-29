//
//  LChartLeftCell.h
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/23.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LChartLeftCell : UITableViewCell
- (void)setLabelText:(NSString *)text;
- (void)reFrameWithHeight:(double)height;
- (void)reTopFrameWithHeight:(double)height;
@end
