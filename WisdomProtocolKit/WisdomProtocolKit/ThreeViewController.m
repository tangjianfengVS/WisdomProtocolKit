//
//  ThreeViewController.m
//  WisdomProtocolKit
//
//  Created by tangjianfeng on 2021/12/20.
//

#import "ThreeViewController.h"
#import "WisdomProtocolKit-Swift.h"

//SWIFT_SUBCLASS
@interface ThreeViewController ()//<WisdomControllerProtocol>

@end


//SWIFT_SUBCLASS
@implementation ThreeViewController


+ (void)registProtocolClass {
    WisdomProtocolConfigModel *model = [[WisdomProtocolConfigModel alloc] initWithConfigClass:self configProtocol:@protocol(ThreeViewProtocol)];
    
    [WisdomProtocolKit registProtocolClassConfigsWithConfigs:@[model] errorClosure:^(NSArray<NSString *> * _Nonnull errorList) {
        
    }];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
}



//+ (WisdomProtocolController * _Nonnull)wisdomProtocolControllerClaWithRootVC:(UIViewController * _Nonnull)rootVC {
//    ThreeViewController *VC = [[ThreeViewController alloc] init];
//    VC.modalPresentationStyle = UIModalPresentationFullScreen;
//
//    [rootVC presentViewController:VC animated:true completion:nil];
//    return VC;
//}
//
//
//+ (WisdomProtocolController * _Nonnull)wisdomProtocolControllerClaWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data {
//    ThreeViewController *VC = [[ThreeViewController alloc] init];
//    VC.modalPresentationStyle = UIModalPresentationFullScreen;
//
//    [rootVC presentViewController:VC animated:true completion:nil];
//    return VC;
//}
//
//
//+ (WisdomProtocolController * _Nonnull)wisdomProtocolControllerClaWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data closure:(void (^ _Nonnull)(id _Nonnull))closure {
//    ThreeViewController *VC = [[ThreeViewController alloc] init];
//    VC.modalPresentationStyle = UIModalPresentationFullScreen;
//
//    [rootVC presentViewController:VC animated:true completion:nil];
//    return VC;
//}
//
//
//+ (WisdomProtocolController * _Nonnull)wisdomProtocolControllerClaWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data returnClosure:(id  _Nonnull (^ _Nonnull)(id _Nonnull))returnClosure {
//    ThreeViewController *VC = [[ThreeViewController alloc] init];
//    VC.modalPresentationStyle = UIModalPresentationFullScreen;
//
//    [rootVC presentViewController:VC animated:true completion:nil];
//    return VC;
//}

@end


