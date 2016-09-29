//
//  LChartLeftView.m
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/23.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "LChartLeftView.h"
#import "LChartLeftCell.h"
@interface LChartLeftView ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *line;

@end
@implementation LChartLeftView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(LChartLeftView *)initWithFrame:(CGRect)frame maxValue:(double)maxValue minValue:(double)minValue itemCount:(NSInteger)itemCount
{
    LChartLeftView *view = [[NSBundle mainBundle] loadNibNamed:@"LChartLeftView" owner:nil options:nil].lastObject;
    view.frame = frame;
    [view setMaxValue:maxValue minValue:minValue itemCount:itemCount];
    return view;
}
- (void)awakeFromNib
{
    [super awakeFromNib];
    [_tableView registerNib:[UINib nibWithNibName:@"LChartLeftCell" bundle:nil] forCellReuseIdentifier:@"LChartLeftCell"];
}
- (void)setMaxValue:(double)maxValue minValue:(double)minValue itemCount:(NSInteger)itemCount
{
    self.maxValue = maxValue;
    self.minValue = minValue;
    self.itemCount = itemCount;
    [_tableView reloadData];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _itemCount+1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 || indexPath.row == _itemCount) {
        return self.frame.size.height/(double)_itemCount/2.0;
    }
    return self.frame.size.height/(double)_itemCount;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LChartLeftCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LChartLeftCell"];
    NSString *str = [NSString stringWithFormat:@"%.02lf",(_maxValue-_minValue)/(double)_itemCount*(_itemCount-indexPath.row)+_minValue];
    if (indexPath.row == 0) {
        [cell reTopFrameWithHeight:self.frame.size.height/(double)_itemCount/2.0];
    }else if (indexPath.row < _itemCount) {
        [cell reFrameWithHeight:self.frame.size.height/(double)_itemCount];
    }
    [cell setLabelText:str];
    return cell;
}

@end
