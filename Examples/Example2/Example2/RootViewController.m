//
//  RootViewController.m
//  BeaconDemo
//
//  Created by jerry on 16/1/26.
//  Copyright © 2016年 tencent. All rights reserved.
//

#import "RootViewController.h"
#import "BaseViewController.h"
#import "PagePathViewController.h"
#import "LogViewController.h"
#import "SpeedViewController.h"
#import <BeaconAPI_Base/BeaconBaseInterface.h>

@interface RootViewController ()

@property (strong, nonatomic) NSArray *list;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.backBarButtonItem = leftBarButtonItem;
    
    self.title = @"欢迎使用灯塔iOS SDK";
    self.list = @[@"自定义事件上报功能", @"路径分析上报功能", @"Log上报功能", @"网络测速功能"];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.list[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            BaseViewController *baseVC = [[BaseViewController alloc] initWithNibName:@"BaseViewController" bundle:nil];
            baseVC.title = self.list[indexPath.row];
            [self.navigationController pushViewController:baseVC animated:YES];
        }
            break;
        case 1:
        {
            PagePathViewController *pagePathVC = [[PagePathViewController alloc] initWithNibName:@"PagePathViewController" bundle:nil];
            pagePathVC.title = self.list[indexPath.row];
            [self.navigationController pushViewController:pagePathVC animated:YES];
        }
            break;
        case 2:
        {
            LogViewController *logVC = [[LogViewController alloc] initWithNibName:@"LogViewController" bundle:nil];
            logVC.title = self.list[indexPath.row];
            [self.navigationController pushViewController:logVC animated:YES];
        }
            break;
        case 3:
        {
            SpeedViewController *speedVC = [[SpeedViewController alloc] initWithNibName:@"SpeedViewController" bundle:nil];
            speedVC.title = self.list[indexPath.row];
            [self.navigationController pushViewController:speedVC animated:YES];
        }
            break;
            
        default:
            break;
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
