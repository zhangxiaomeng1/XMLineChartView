//
//  XMTimeLineView.h
//  XMLineChartView
//
//  Created by 张晓檬 on 2018/3/23.
//  Copyright © 2018年 张晓檬. All rights reserved.
//

#import "XMLineChartViewBase.h"
#import "XMLineDataSet.h"

@interface XMTimeLineView : XMLineChartViewBase

@property (nonatomic,assign) CGFloat offsetMaxPrice;
@property (nonatomic,assign) NSInteger countOfTimes;

@property (nonatomic,assign) BOOL endPointShowEnabled;
@property (nonatomic,assign) BOOL isDrawAvgEnabled;

- (void)setupData:(XMTimeDataset *)dataSet;

@end

