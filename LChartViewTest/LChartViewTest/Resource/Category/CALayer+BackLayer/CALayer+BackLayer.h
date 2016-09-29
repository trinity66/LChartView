//
//  CALayer+BackLayer.h
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/21.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
@interface CALayer (BackLayer)
+ (CALayer *)layerOfLineFrom:(CGPoint)from to:(CGPoint)to withColor:(UIColor*)color andWidth:(CGFloat)width;
+(CALayer *)backGradientWithPoints:(NSArray*)points height:(double)height width:(double)width colors:(NSArray<UIColor *> *)colors;

+(CALayer *)lineWithPoints:(NSArray*)points lineColor:(UIColor *)lineColor height:(double)height width:(double)width isGradient:(BOOL)isGradient isShowFillColor:(BOOL)isShowFillColor fillColor:(UIColor*)fillColor;

@end
