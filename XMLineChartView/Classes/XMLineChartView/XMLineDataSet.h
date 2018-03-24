//
//  XMLineDataSet.h
//  XMLineChartView
//
//  Created by 张晓檬 on 2018/3/23.
//  Copyright © 2018年 张晓檬. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XMLineDataSet : NSObject

@property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,assign) CGFloat highlightLineWidth;
@property (nonatomic,strong) UIColor  *highlightLineColor;
@property (nonatomic,strong) UIColor *candleRiseColor;
@property (nonatomic,strong) UIColor *candleFallColor;
@property (nonatomic,strong) UIColor *avgMA5Color;
@property (nonatomic,strong) UIColor *avgMA10Color;
@property (nonatomic,strong) UIColor *avgMA20Color;
@property (nonatomic,assign) CGFloat  avgLineWidth;
@property (nonatomic,assign) CGFloat candleTopBottmLineWidth;

@end


@interface XMTimeDataset : NSObject

@property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,assign) CGFloat highlightLineWidth;
@property (nonatomic,strong) UIColor  *highlightLineColor;
@property (nonatomic,assign) CGFloat  lineWidth;
@property (nonatomic,strong) UIColor *priceLineCorlor;
@property (nonatomic,strong) UIColor *avgLineCorlor;

@property (nonatomic,strong) UIColor *volumeRiseColor;
@property (nonatomic,strong) UIColor *volumeFallColor;
@property (nonatomic,strong) UIColor *volumeTieColor;

@property (nonatomic,assign) BOOL drawFilledEnabled;
@property (nonatomic,strong) UIColor *fillStartColor;
@property (nonatomic,strong) UIColor *fillStopColor;
@property (nonatomic,assign) CGFloat fillAlpha;

@end

