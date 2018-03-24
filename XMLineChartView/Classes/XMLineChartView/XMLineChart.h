//
//  XMLineChart.h
//  XMLineChartView
//
//  Created by 张晓檬 on 2018/3/23.
//  Copyright © 2018年 张晓檬. All rights reserved.
//

#ifndef XMLineChart_h
#define XMLineChart_h

#import "XMLineChartView.h"
#import "XMLineEntity.h"
#import "XMLineDataSet.h"
#import "XMTimeLineView.h"

#define QXMHex2Rgb(hexValue,alph) [UIColor colorWithRed:((hexValue & 0xFF0000) >> 16)/255.0 green:((hexValue & 0xFF00) >> 8)/255.0 blue:((hexValue & 0xFF))/255.0 alpha:(alph)]

#endif /* XMLineChart_h */
