//
//  XMViewBase.h
//  XMLineChartView
//
//  Created by 张晓檬 on 2018/3/23.
//  Copyright © 2018年 张晓檬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XMViewBase : UIView

@property (nonatomic,assign) CGRect contentRect;//记录视图减去内边距的尺寸
@property (nonatomic,assign) CGFloat chartHeight;//记录视图的真实高度
@property (nonatomic,assign) CGFloat chartWidth;//记录视图的真实宽度

- (void)setupChartOffsetWithLeft:(CGFloat)left
                             top:(CGFloat)top
                           right:(CGFloat)right
                          bottom:(CGFloat)bottom;

- (void)notifyDataSetChanged;

- (void)notifyDeviceOrientationChanged;
- (BOOL)isInBoundsX:(CGFloat)x;

- (BOOL)isInBoundsY:(CGFloat)y;

- (BOOL)isInBoundsX:(CGFloat)x
                  y:(CGFloat)y;

- (BOOL)isInBoundsLeft:(CGFloat)x;
- (BOOL)isInBoundsRight:(CGFloat)x;

- (BOOL)isInBoundsTop:(CGFloat)y;

- (BOOL)isInBoundsBottom:(CGFloat)y;

- (CGFloat)contentTop;
- (CGFloat)contentLeft;
- (CGFloat)contentRight;
- (CGFloat)contentBottom;
- (CGFloat)contentWidth;
- (CGFloat)contentHeight;

@end
