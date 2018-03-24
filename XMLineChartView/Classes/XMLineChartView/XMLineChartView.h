//
//  XMLineChartView.h
//  XMLineChartView
//
//  Created by 张晓檬 on 2018/3/23.
//  Copyright © 2018年 张晓檬. All rights reserved.
//

#import "XMLineChartViewBase.h"

@class  XMLineDataSet;
@interface XMLineChartView : XMLineChartViewBase

@property (nonatomic,assign)CGFloat candleWidth;
@property (nonatomic,assign)CGFloat candleMaxWidth;
@property (nonatomic,assign)CGFloat candleMinWidth;

@property (nonatomic,assign)BOOL isShowAvgMarkerEnabled;
@property (nonatomic,strong)NSDictionary * avgLabelAttributedDic;

- (void)setupData:(XMLineDataSet *)dataSet;

- (void)addDataSetWithArray:(NSArray *)array;

@property (nonatomic, assign) BOOL isStartPoint;

@end
