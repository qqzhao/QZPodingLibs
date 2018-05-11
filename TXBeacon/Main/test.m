#import "BeaconBaseInterface.h"
#import "BeaconTrackInterface.h"
#import "BeaconAuditInterface.h"

@implementation NSObject (XXX)

+ (void)setupBeaconTest{
//    enum AnlyticsSDKStatus status = [BeaconBaseInterface getSDKStatus];
    
    [BeaconBaseInterface class];
    [BeaconTrackInterface class];
    [BeaconAuditInterface class];
//    NSLog(@"status = %@", status);
}

@end


