#import "BeaconBaseInterface.h"
#import "BeaconTrackInterface.h"
#import "BeaconAuditInterface.h"

@implementation NSObject (XXX)

//+ (void)initialize
//{
//    if (self == [NSObject class]) {
//        NSLog(@"11");
//    }
//}
+ (void)setupBeaconTest{
//    enum AnlyticsSDKStatus status = [BeaconBaseInterface getSDKStatus];
    
    [BeaconBaseInterface class];
    [BeaconTrackInterface class];
    [BeaconAuditInterface class];
//    NSLog(@"status = %@", status);
}

@end


