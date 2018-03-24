//
//  KLineChartVC.m
//  XMLineChartView
//
//  Created by 张晓檬 on 2018/3/23.
//  Copyright © 2018年 张晓檬. All rights reserved.
//

#import "KLineChartVC.h"

#import "XMLineChart.h"

@interface KLineChartVC ()<XMLineChartViewDelegate>

@property (strong, nonatomic) XMLineChartView *klineView;

@end

@implementation KLineChartVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self creatUI];
}

- (void)creatUI{
    self.klineView = [[XMLineChartView alloc] init];
    [self.klineView setupChartOffsetWithLeft:50 top:10 right:10 bottom:10];
    self.klineView.gridBackgroundColor = [UIColor whiteColor];
    self.klineView.borderColor = [UIColor colorWithRed:203/255.0 green:215/255.0 blue:224/255.0 alpha:1.0];
    self.klineView.borderWidth = .5;
    self.klineView.candleWidth = 8;
    self.klineView.candleMaxWidth = 30;
    self.klineView.candleMinWidth = 1;
    self.klineView.uperChartHeightScale = 0.7;
    self.klineView.xAxisHeitht = 30;
    self.klineView.delegate = self;
    self.klineView.highlightLineShowEnabled = YES;
    self.klineView.zoomEnabled = YES;
    self.klineView.scrollEnabled = YES;
    self.klineView.frame = CGRectMake(10, 100, self.view.bounds.size.width - 2 * 10, 300);
    [self.view addSubview:self.klineView];
    
    //    赋值
    NSString * path =[[NSBundle mainBundle]pathForResource:@"data.plist" ofType:nil];
    NSArray * sourceArray = [[NSDictionary dictionaryWithContentsOfFile:path] objectForKey:@"data"];
    NSMutableArray * array = [NSMutableArray array];
    for (NSDictionary * dic in sourceArray) {
        
        XMLineEntity * entity = [[XMLineEntity alloc]init];
        entity.high = [dic[@"high_px"] doubleValue];
        entity.open = [dic[@"open_px"] doubleValue];
        
        entity.low = [dic[@"low_px"] doubleValue];
        
        entity.close = [dic[@"close_px"] doubleValue];
        
        entity.date = dic[@"date"];
        entity.ma5 = [dic[@"avg5"] doubleValue];
        entity.ma10 = [dic[@"avg10"] doubleValue];
        entity.ma20 = [dic[@"avg20"] doubleValue];
        entity.volume = [dic[@"total_volume_trade"] doubleValue];
        [array addObject:entity];
    }
    [array addObjectsFromArray:array];
    XMLineDataSet * dataset = [[XMLineDataSet alloc]init];
    dataset.data = array;
    //    长按的线颜色
    dataset.highlightLineColor = QXMHex2Rgb(0x000000, 0.5);
    dataset.highlightLineWidth = 0.7;
    dataset.candleRiseColor = QXMHex2Rgb(0xff5353, 1);
    dataset.candleFallColor = QXMHex2Rgb(0x00b07c, 1);
    dataset.avgLineWidth = 0.8f;
    dataset.avgMA5Color = QXMHex2Rgb(0xff783c, 1);
    dataset.avgMA10Color = QXMHex2Rgb(0x9b7ae5, 1);
    dataset.avgMA20Color = QXMHex2Rgb(0xf3c717, 1);
    dataset.candleTopBottmLineWidth = 1;

    [self.klineView setupData:dataset];
}

-(void)chartValueSelected:(XMViewBase *)chartView entry:(id)entry entryIndex:(NSInteger)entryIndex
{
    NSLog(@"====%ld",entryIndex);
}
- (void)chartValueNothingSelected:(XMViewBase *)chartView
{
}
- (void)chartKlineScrollLeft:(XMViewBase *)chartView
{
    
}

@end
