//
//  PagePathViewController.m
//  BeaconDemo
//
//  Created by jerry on 2018/5/2.
//  Copyright © 2018年 tencent. All rights reserved.
//

#import "PagePathViewController.h"
#import <BeaconAPI_Base/BeaconBaseInterface.h>

@interface PagePathViewController ()

@end

@implementation PagePathViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [BeaconBaseInterface onPageBegin:@"PagePathViewController"];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [BeaconBaseInterface onPageEnd:@"PagePathViewController"];
}

@end
