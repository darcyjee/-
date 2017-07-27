//
//  JJTrackViewController.m
//  计步通
//
//  Created by 季伯文 on 2017/7/27.
//  Copyright © 2017年 bowen. All rights reserved.
//

#import "JJTrackViewController.h"
#import <MapKit/MapKit.h>
#import "JJMapViewController.h"
#import "JJConst.h"

@interface JJTrackViewController ()

@end

@implementation JJTrackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    JJMapViewController *mapVC = [JJMapViewController new];
    [self addChildViewController:mapVC];
    [self.view insertSubview:mapVC.view atIndex:0];
    [mapVC didMoveToParentViewController:self];
}
@end
