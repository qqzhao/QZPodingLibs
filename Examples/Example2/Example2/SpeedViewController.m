//
//  SpeedViewController.m
//  BeaconDemo
//
//  Created by jerry on 16/1/27.
//  Copyright © 2016年 tencent. All rights reserved.
//

#import "SpeedViewController.h"
#import <BeaconAPI_Speed/BeaconSpeedInterface.h>

@interface SpeedViewController ()

@end

@implementation SpeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testSpeedIpAction:(id)sender
{
    NSMutableArray * ipList = [[NSMutableArray alloc] init];
    [ipList addObject:@"183.60.3.145:80"];
    [ipList addObject:@"183.60.3.145:80"];
    [BeaconSpeedInterface testSpeedIp:ipList];
}

- (IBAction)testSpeedDomainAction:(id)sender
{
    NSMutableArray * domainList = [[NSMutableArray alloc] init];
    [domainList addObject:@"http://monitor.3g.qq.com/a.html"];
    [domainList addObject:@"http://monitor.3g.qq.com/b.jsp"];
    [BeaconSpeedInterface testSpeedDomain:domainList];
}

@end
