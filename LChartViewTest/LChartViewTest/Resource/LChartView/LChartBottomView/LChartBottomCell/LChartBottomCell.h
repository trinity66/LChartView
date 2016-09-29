//
//  LChartBottomCell.h
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/23.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LChartBottomCell : UICollectionViewCell

- (void)setLabelText:(NSString *)text;
- (void)reFrameWithWidth:(double)width;
- (void)reFrameRightWithWidth:(double)width;
- (void)reFrameLeft;
@end
