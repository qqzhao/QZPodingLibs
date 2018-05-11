//
//  BeaconTrackInterface.h
//  Beacon
//
//  Created by jerry on 2017/2/15.
//  Copyright © 2017年 tencent. All rights reserved.
//

@interface BeaconTrackInterface : NSObject

/*
 *开启动态埋点，默认关闭
 */
+ (void)setTrackEnable:(BOOL)enable;
+ (BOOL)handleOpenURL:(NSURL *)url;

+ (BOOL)onTrackUserAction:(NSString *)pagePath eventName:(NSString *)eventName viewId:(NSString *)viewId;
+ (BOOL)onTrackUserAction:(NSString *)pagePath eventName:(NSString *)eventName viewId:(NSString *)viewId text:(NSString *)text;
+ (BOOL)onTrackUserAction:(NSString *)pagePath eventName:(NSString *)eventName viewId:(NSString *)viewId text:(NSString *)text url:(NSString *)url;
+ (BOOL)onTrackUserAction:(NSString *)pagePath eventName:(NSString *)eventName text:(NSString *)text url:(NSString *)url;

/*
 动态埋点事件跟踪
 */
+ (BOOL)onTrackUserAction:(NSString *)eventName params:(NSDictionary *)params;

@end
