//
//  TimeLineChartVC.m
//  XMLineChartView
//
//  Created by 张晓檬 on 2018/3/23.
//  Copyright © 2018年 张晓檬. All rights reserved.
//

#import "TimeLineChartVC.h"
#import "XMLineChart.h"

@interface TimeLineChartVC ()<XMLineChartViewDelegate>

@property (strong, nonatomic) XMTimeLineView *timeLineView;

@end

@implementation TimeLineChartVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self creatUI];
}

- (void)creatUI{
    self.timeLineView = [[XMTimeLineView alloc] init];
    [self.timeLineView setupChartOffsetWithLeft:40 top:10 right:40 bottom:10];
    self.timeLineView.gridBackgroundColor = [UIColor whiteColor];
    self.timeLineView.borderColor = QXMHex2Rgb(0xf6f6f6, 1);
    self.timeLineView.borderWidth = .5;
    self.timeLineView.uperChartHeightScale = 0.7;
    self.timeLineView.xAxisHeitht = 25;
    self.timeLineView.countOfTimes = 190;
    self.timeLineView.endPointShowEnabled = YES;
    //        self.timeLineView.leftYAxisIsInChart = YES;
    self.timeLineView.rightYAxisDrawEnabled = YES;
    self.timeLineView.delegate = self;
    self.timeLineView.highlightLineShowEnabled = YES;
    self.timeLineView.isDrawAvgEnabled  = YES;
    self.timeLineView.frame = CGRectMake(10, 100, self.view.bounds.size.width - 2 * 10, 300);
    [self.view addSubview:self.timeLineView];


    //    赋值
    NSString * path =[[NSBundle mainBundle]pathForResource:@"data.plist" ofType:nil];
    NSArray * sourceArray = [[NSDictionary dictionaryWithContentsOfFile:path] objectForKey:@"data3"];
    NSMutableArray * timeArray = [NSMutableArray array];
    for (NSDictionary * dic in sourceArray) {
        XMTimeLineEntity * e = [[XMTimeLineEntity alloc]init];
        //        当前时间
        e.currtTime = dic[@"curr_time"];
        
        e.preClosePx = [dic[@"pre_close_px"] doubleValue];
        
        e.avgPirce = [dic[@"avg_pirce"] doubleValue];
        
        e.lastPirce = [dic[@"last_px"]doubleValue];
        
        e.volume = [dic[@"last_volume_trade"]doubleValue];
        
        e.rate = dic[@"rise_and_fall_rate"];
        
        [timeArray addObject:e];
    }
    XMTimeDataset * set  = [[XMTimeDataset alloc]init];
    set.data = timeArray;
    set.avgLineCorlor = [UIColor colorWithRed:253/255.0 green:179/255.0 blue:8/255.0 alpha:1.0];
    set.priceLineCorlor = QXMHex2Rgb(0x4CB1FF,1);
    set.lineWidth = 1.f;
    set.highlightLineWidth = .8f;
    set.highlightLineColor = [UIColor colorWithRed:60/255.0 green:76/255.0 blue:109/255.0 alpha:1.0];
    
    set.volumeTieColor = [UIColor grayColor];
    set.volumeRiseColor = QXMHex2Rgb(0xff5353, 1);
    set.volumeFallColor = QXMHex2Rgb(0x00b07c, 1);
    set.fillStartColor =  QXMHex2Rgb(0x4CB1FF,1);
    set.fillStopColor = QXMHex2Rgb(0x4CB1FF,0.5);
    set.fillAlpha = .5f;
    set.drawFilledEnabled = YES;
    [self.timeLineView setupData:set];
}

-(void)chartValueSelected:(XMViewBase *)chartView entry:(id)entry entryIndex:(NSInteger)entryIndex
{
    NSLog(@"=111===%@",chartView);
}

- (void)chartValueNothingSelected:(XMViewBase *)chartView
{
    NSLog(@"==22==%@",chartView);
}

- (void)chartKlineScrollLeft:(XMViewBase *)chartView
{
    NSLog(@"=33==%@",chartView);
}

@end
