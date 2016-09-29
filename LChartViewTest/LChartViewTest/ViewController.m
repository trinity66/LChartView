//
//  ViewController.m
//  LChartViewTest
//
//  Created by liuxiaomin on 16/8/12.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "ViewController.h"
#import "CALayer+BackLayer.h"
#import "LChartView.h"
/*
 kItemSpace 每个数据点间隔的距离
 */
#define kItemSpace 5
__weak ViewController *weakSelf;
@interface ViewController ()
{
    BOOL isGradient, isShowFillColor;
    double currentX;
    LChartView *lchart;
}
//用于填充渐变背景色的UIView
@property (weak, nonatomic) IBOutlet UIView *backView;
//相当于backViwe的origin.y
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bkVTop;
//相当于backView的origin.x
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bkVLeft;
//相当于backView的width
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bkVWidth;
//相当于backView的height
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bkVHeight;


@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    weakSelf = self;
    _bkVWidth.constant = self.view.frame.size.width-40;
    lchart = [[LChartView alloc] init];
    [lchart initWithFrame:CGRectMake(0, 0, _bkVWidth.constant, _bkVHeight.constant)
                itemWidth:kItemSpace
           leftLabelCount:5
         bottomLabelCount:4
            leftViewWidth:50
         bottomViewHeight:25
                  isStock:YES
               isGradient:YES];
    lchart.topView.btnsActionBlock = ^(NSInteger index) {
        [weakSelf handleScaleWithIndex:index];
    };
    [_backView addSubview:lchart];
}
- (void)handleScaleWithIndex:(NSInteger)index
{
    [lchart subShowViewsHidden:YES];
    double width = kItemSpace;
    switch (index) {
        case 0:
            width *= 1.0;
            break;
        case 1:
            width *= 1.5;
            break;
        case 2:
            width *= 2.0;
            break;
        default:
            break;
    }
    lchart.item_width = width;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)stockAction:(id)sender {
    lchart.isStock = YES;
    [lchart loadData];
}
- (IBAction)lineAction:(id)sender {
    
    lchart.isStock = NO;
    [lchart loadData];
}

@end
