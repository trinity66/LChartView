# LChartView
代码灵感来自于[here](https://github.com/chenxiaoyu3/BBStockChartView)
##展示效果

###折线图展示效果
![Syntax highlighting example](http://a.hiphotos.baidu.com/image/pic/item/b8389b504fc2d56275986b1def1190ef77c66caa.jpg)


###k图展示效果
![Syntax highlighting example](http://e.hiphotos.baidu.com/image/pic/item/0d338744ebf81a4ce5404939df2a6059242da6d4.jpg)


###放大效果
![Syntax highlighting example](http://e.hiphotos.baidu.com/image/pic/item/cdbf6c81800a19d8a8dd21f53bfa828ba71e4667.jpg)

##示例代码
```
lchart = [[LChartView alloc] init];
    [lchart initWithFrame:CGRectMake(0, 0, _bkVWidth.constant, _bkVHeight.constant)
                itemWidth:kItemSpace
           leftLabelCount:5
         bottomLabelCount:4
            leftViewWidth:50
         bottomViewHeight:25
                  isStock:YES
               isGradient:YES
     ];
```
```
frame---整体坐标
itemWidth---每个点的宽度
leftLabelCount---左边坐标的个数
bottomLabelCount---底部坐标的个数，此处数据是虚假的，可根据实际情况自己更改
leftViewWidth---左边坐标视图的宽度
bottomViewHeight---底部坐标视图的高度
isStock---是否是k图，之后可以通过改变此属性来改变样式(k图，折线图)
isGradient---是否填充渐变色背景，只针对折线图有效果
```
