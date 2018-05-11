//
//  BeaconSpeedInterface.h
//  Beacon
//
//  Created by tencent on 16/1/19.
//  Copyright © 2016年 tencent. All rights reserved.
//

@interface BeaconSpeedInterface : NSObject

//启用测速功能
+ (BOOL)enableSpeedTrack:(BOOL)enable;

//对测速ip列表进行探测，结果作为事件逐一上报
//ipList为测速列表，每一行记录格式为“ip:port"
+ (BOOL)testSpeedIp:(NSArray *)ipList;

//对测速域名列表进行测速，结果作为事件逐一上报
+ (BOOL)testSpeedDomain:(NSArray *)domainList;

//对测速host列表进行测速，结果作为事件逐一上报 host:ip:port:uri
//注意：需要对host和uri做urlencode
+ (BOOL)testSpeedHost:(NSArray *)domainList;

@end
