//
//  BaseViewController.m
//  BeaconDemo
//
//  Created by jerry on 16/1/26.
//  Copyright © 2016年 tencent. All rights reserved.
//

#import "BaseViewController.h"
#import <BeaconAPI_Base/BeaconBaseInterface.h>

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)eventAction:(id)sender
{
    NSString *str = @"A8=10000&A3=84116938-71cf-41ba-952d-83cf51f3ad58&A19=wifi&A23=123456&A5=A5995E6B-C42F-4B5E-99EA-FD343279B3D7&A50=84116938-71CF-41BA-952D-83CF51F3AD58&A51=&A67=com.tencent.BeaconAPITest5&A99=N&A100=3BA197F2683166C1_20161102_N_24&A76=49976598833368&QQ=&qua2=QV%3D2%26PL%3DIOS%26PR%3DQB%26DE%3DPHONE%26VE%3DGA%26VN%3D7.1.0.0001%26CO%3DIMTT%26RL%3D7501334%26MO%3DiPhoneSIMU%26CHID%3D50001%26LCID%3D9840%26OS%3D10.0%26REF%3Dqb_0&event_details=action%3Dclick%26entry%3D0%26target%3D31大主宰%26c_type%3D1%26u_type%3D1%26r_word%3Dda&lc=1360B751B0634A7&event_url=http://qbs.html5.qq.com/r?s%3D3fefbc3d64c57eb5c24d1b14368250cd%26q%3Dda%26k%3D%E5%A4%A7%E4%B8%BB%E5%AE%B0%26n%3D%E5%A4%A7%E4%B8%BB%E5%AE%B0%26t%3D1%26p%3D0%26b%3D0%26a%3D026026F30E5AC1C1%26u%3Dqb%3A%2F%2Fext%2Fnovel%2Fstore%2F%3Furl%3Dhttp%3A%2F%2Fbookshelf%2Ehtml5%2Eqq%2Ecom%2F%3Ft%3Dnative%26ch%3D001339%23%21%2Fcatalog%2F1100462523%26f%3D_0f&event_name=v_searchprod_ver=1.1(1)";
    
    NSMutableDictionary *mtdic = [NSMutableDictionary dictionary];
    [mtdic setObject:@"深圳市" forKey:@"city"];
    [mtdic setObject:@"中国" forKey:@"country"];
    [mtdic setObject:str forKey:@"test1"];
    [BeaconBaseInterface onUserAction:@"eventNameA" isSucceed:YES elapse:0 size:0 params:mtdic];
}

- (IBAction)realEventAction:(id)sender
{
    [BeaconBaseInterface onDirectUserAction:@"eventNameB" isSucceed:YES elapse:0 size:0 params:nil];
}

@end
