//
//  XMLineEntity.h
//  XMLineChartView
//
//  Created by 张晓檬 on 2018/3/23.
//  Copyright © 2018年 张晓檬. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface XMLineEntity : NSObject

@property (nonatomic,assign) CGFloat open;
@property (nonatomic,assign) CGFloat high;
@property (nonatomic,assign) CGFloat low;
@property (nonatomic,assign) CGFloat close;
@property (nonatomic,assign) NSInteger index;
@property (nonatomic,copy) NSString *date;

@property (nonatomic,assign) CGFloat volume;
@property (nonatomic,assign) CGFloat ma5;
@property (nonatomic,assign) CGFloat ma10;
@property (nonatomic,assign) CGFloat ma20;
@property (nonatomic,assign) CGFloat preClosePx;
@property (nonatomic,copy) NSString *rate;

@end


@interface XMTimeLineEntity : NSObject

@property (nonatomic,copy) NSString *currtTime;
@property (nonatomic,assign) CGFloat preClosePx;
@property (nonatomic,assign) CGFloat avgPirce;
@property (nonatomic,assign) CGFloat lastPirce;
@property (nonatomic,assign) CGFloat totalVolume;
@property (nonatomic,assign) CGFloat volume;
@property (nonatomic,assign) CGFloat trade;
@property (nonatomic,copy) NSString *rate;

@end

