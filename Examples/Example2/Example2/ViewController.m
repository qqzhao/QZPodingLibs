//
//  ViewController.m
//  Example2
//
//  Created by qianzhao on 2018/5/11.
//  Copyright © 2018年 qianzhao. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"RootVC";
    // Do any additional setup after loading the view, typically from a nib.
    
    RootViewController *vc = [RootViewController new];
    vc.title = @"TX Beacon Test";
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.8f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.navigationController pushViewController:vc animated:YES];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
