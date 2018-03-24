//
//  XMViewController.m
//  XMLineChartView
//
//  Created by zhangxiaomeng1 on 03/24/2018.
//  Copyright (c) 2018 zhangxiaomeng1. All rights reserved.
//

#import "XMViewController.h"

#import "TimeLineChartVC.h"
#import "KLineChartVC.h"

@interface XMViewController ()

@end

@implementation XMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *timeLineChart = [UIButton buttonWithType:UIButtonTypeCustom];
    timeLineChart.frame = CGRectMake(100, 100, 100, 50);
    [timeLineChart setTitle:@"分时线" forState:UIControlStateNormal];
    [timeLineChart setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [timeLineChart addTarget:self action:@selector(timeLineChartClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:timeLineChart];
    
    UIButton *KLineChart = [UIButton buttonWithType:UIButtonTypeCustom];
    KLineChart.frame = CGRectMake(100, 200, 100, 50);
    [KLineChart setTitle:@"K线" forState:UIControlStateNormal];
    [KLineChart setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [KLineChart addTarget:self action:@selector(KLineChartClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:KLineChart];
}

- (void)timeLineChartClick{
    TimeLineChartVC *vc = [[TimeLineChartVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)KLineChartClick{
    KLineChartVC *vc = [[KLineChartVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
