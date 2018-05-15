//
//  LogViewController.m
//  BeaconDemo
//
//  Created by jerry on 16/1/26.
//  Copyright © 2016年 tencent. All rights reserved.
//

#import "LogViewController.h"
#import <BeaconAPI_Log/BeaconLogInterface.h>

@interface LogViewController ()

@end

@implementation LogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //需要设置logUserId
    [BeaconLogInterface setAppLogUserId:@"331050027"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 *需手动调用上报接口
 *[BeaconLogInterface doUploadAppLogRecords];
 */
- (IBAction)logUploadAction:(id)sender
{
    [BeaconLogInterface onAppLogUploadAction:@"loginfoA"];
}

- (IBAction)realLogUploadAction:(id)sender
{
    [BeaconLogInterface onAppLogUploadAction:@"loginfoB" isRealTime:YES];
}

@end
