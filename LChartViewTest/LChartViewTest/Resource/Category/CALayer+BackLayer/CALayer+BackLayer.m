//
//  CALayer+BackLayer.m
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/21.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "CALayer+BackLayer.h"

@implementation CALayer (BackLayer)
+ (CALayer *)layerOfLineFrom:(CGPoint)from to:(CGPoint)to withColor:(UIColor*)color andWidth:(CGFloat)width
{
    CAShapeLayer *line = [CAShapeLayer layer];
    UIBezierPath *linePath = [UIBezierPath bezierPath];
    [linePath moveToPoint:from];
    [linePath addLineToPoint:to];
    line.path = linePath.CGPath;
    line.opacity = 1.0;
    line.strokeColor = color.CGColor;
    line.lineWidth = width;
    line.strokeStart = 0;
    return line;
}
+(CALayer *)lineWithPoints:(NSArray*)points lineColor:(UIColor *)lineColor height:(double)height width:(double)width isGradient:(BOOL)isGradient isShowFillColor:(BOOL)isShowFillColor fillColor:(UIColor*)fillColor
{
    //画线
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    CAShapeLayer *shapelayer = [CAShapeLayer layer];
    //(有渐变背景)or(无渐变背景&&不需填充背景)，所以只划线即可
    if (isGradient || (!isGradient && !isShowFillColor)) {
        shapelayer.fillColor = [UIColor clearColor].CGColor;
        for (int index = 0; index < points.count; index ++) {
            NSArray *currentP = points[index];
            CGPoint currentPoint = CGPointMake([currentP[0] doubleValue], [currentP[1] doubleValue]);
            if (index != 0) {
                [bezierPath addLineToPoint:currentPoint];
            }[bezierPath moveToPoint:currentPoint];
        }
        [bezierPath closePath];
    }else if (isShowFillColor)
    {
        //无渐变背景&&需填充背景
        shapelayer.fillColor = fillColor.CGColor;
        for (int index = 0; index < points.count; index ++) {
            NSArray *currentP = points[index];
            CGPoint currentPoint = CGPointMake([currentP[0] doubleValue], [currentP[1] doubleValue]);
            if (index == 0) {
            [bezierPath moveToPoint:CGPointMake(0, height)];
            }
            [bezierPath addLineToPoint:currentPoint];
            if (index == points.count-1) {
               [bezierPath addLineToPoint:CGPointMake(currentPoint.x, height)];
                [bezierPath addLineToPoint:CGPointMake(0, height)];
            }
        }
        [bezierPath closePath];
    }
    shapelayer.lineCap = kCALineCapRound;
    shapelayer.lineJoin = kCALineCapRound;
    shapelayer.lineWidth = 1.0f;
    shapelayer.strokeStart = 0;
    shapelayer.strokeEnd = 1;
    shapelayer.strokeColor = lineColor.CGColor;
    shapelayer.path = bezierPath.CGPath;
    
    return shapelayer;
}
+(CALayer *)backGradientWithPoints:(NSArray*)points height:(double)height width:(double)width colors:(NSArray<UIColor *> *)colors
{
    //绘制渐变色层
    height = height;
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame =CGRectMake(0, 0, width, height) ;// self.view.frame;

    NSMutableArray *backColors = [NSMutableArray array];
    NSMutableArray *locations = [NSMutableArray array];
    for (int i = 0; i < colors.count; i ++) {
        [backColors addObject:(__bridge id)colors[i].CGColor];
        [locations addObject:@(1.0/(float)colors.count*i)];
    }
    gradientLayer.colors = backColors;
    gradientLayer.locations = locations;
    

//    gradientLayer.locations=@[@0.0,@0.5,@1.0];
    UIBezierPath * path=[[UIBezierPath alloc] init];
    for (int index = 0; index < points.count; index ++) {
        NSArray *currentP = points[index];
        double currentPX = [currentP[0] doubleValue], currentPY = [currentP[1] doubleValue];
        if (index == 0) {
            [path moveToPoint:CGPointMake(0, height)];
        }else
        {
            NSArray *preP = points[index-1];
            double prePX = [preP[0] doubleValue], prePY = [preP[1] doubleValue];
            [path addLineToPoint:CGPointMake(prePX, prePY)];
            [path addLineToPoint:CGPointMake(currentPX, currentPY)];
            [path addLineToPoint:CGPointMake(currentPX, height)];
            [path addLineToPoint:CGPointMake(prePX, height)];
        }
    }
    [path closePath];
    CAShapeLayer *arc = [CAShapeLayer layer];
    arc.path =path.CGPath;
    gradientLayer.mask=arc;
    return gradientLayer;
}

@end
