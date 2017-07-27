//
//  JJMapViewController.m
//  计步通
//
//  Created by 季伯文 on 2017/7/25.
//  Copyright © 2017年 bowen. All rights reserved.
//

#import "JJMapViewController.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>
#import "JJConst.h"

@interface JJMapViewController ()

@end

@implementation JJMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ///地图需要v4.5.0及以上版本才必须要打开此选项（v4.5.0以下版本，需要手动配置info.plist）
    [AMapServices sharedServices].enableHTTPS = YES;
    
    ///初始化地图
    MAMapView *_mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
    
    ///把地图添加至view
    [self.view insertSubview:_mapView atIndex:0];
    
    //设置指南针位置
    _mapView.compassOrigin = CGPointMake(_mapView.compassOrigin.x, JJNavHeight + 22);
    //不显示比例尺
    _mapView.showsScale = NO;
    
    //进入地图即显示定位点
    _mapView.showsUserLocation = YES;
    _mapView.userTrackingMode = MAUserTrackingModeFollow;
    
    //允许后台定位
    _mapView.allowsBackgroundLocationUpdates = YES;
    //进制系统自动暂停位置更新
    _mapView.pausesLocationUpdatesAutomatically = NO;
}

@end
