//
//  LChartBottomView.m
//  LChartViewTest
//
//  Created by liuxiaomin on 16/9/23.
//  Copyright © 2016年 liuxiaomin. All rights reserved.
//

#import "LChartBottomView.h"
#import "LChartBottomCell.h"
@interface LChartBottomView ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UIView *line;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
@implementation LChartBottomView
+(LChartBottomView *)initWithDatas:(NSArray *)datas frame:(CGRect)frame
{
    LChartBottomView *view = [[NSBundle mainBundle] loadNibNamed:@"LChartBottomView" owner:nil options:nil].lastObject;
    view.frame = frame;
    view.itemDatas = datas;
    return view;
    
}
- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    [_collectionView reloadData];
}
- (void)awakeFromNib
{
    [super awakeFromNib];
    [_collectionView registerNib:[UINib nibWithNibName:@"LChartBottomCell" bundle:nil] forCellWithReuseIdentifier:@"LChartBottomCell"];
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _itemDatas.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LChartBottomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"LChartBottomCell" forIndexPath:indexPath];
    if (indexPath.item == 0) {
        [cell reFrameLeft];
    }else
    {
        [cell reFrameWithWidth:self.frame.size.width/_itemDatas.count];
    }
    [cell setLabelText:_itemDatas[indexPath.item]];
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    double width = self.frame.size.width/_itemDatas.count;
    if (indexPath.item == 0) {
        width /= 2.0;
    }
    return CGSizeMake(width, self.frame.size.height-1);
}

@end
