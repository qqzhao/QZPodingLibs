//
//  AppDelegate.m
//  Example2
//
//  Created by qianzhao on 2018/5/11.
//  Copyright © 2018年 qianzhao. All rights reserved.
//

#import "AppDelegate.h"
#import <TXBeacon/BeaconBaseInterface.h>
#import <TXBeacon/BeaconTrackInterface.h>
#import <TXBeacon/BeaconAuditInterface.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    [BeaconBaseInterface setAppKey:@"1ND57WQQNS2WHH2E"];
    [self startBeacon];
    return YES;
}

- (void)startBeacon {
#if DEBUG == 1
    long long start = [[NSDate date] timeIntervalSince1970];
    [BeaconBaseInterface setLogLevel:10];                           //Log输出级别
    [BeaconBaseInterface setAccessTest:YES];                        //开启实时联调模式，发布时记得注释掉
#endif
    [BeaconBaseInterface setChannelId:@"001"];                      //渠道号
    [BeaconBaseInterface setAppKey:@"0M300V63NP0NGUB3"];            //设置AppKey
    [BeaconBaseInterface enableAnalytics:@"331050027" gatewayIP:nil]; //SDK初始化
    [BeaconBaseInterface enableSDKQuaUpload:YES];                   //开启日志质量采集
//    [BeaconTrackInterface setTrackEnable:YES];                      //开启动态埋点功能
    [BeaconAuditInterface setAuditEnable:YES];                      //开启渠道稽核功能
#if DEBUG == 1
    NSTimeInterval end = [[NSDate date] timeIntervalSince1970];
    NSLog(@"appdelegate beacon sdk init using %f ms", (end * 1000 - start * 1000));
#endif
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
