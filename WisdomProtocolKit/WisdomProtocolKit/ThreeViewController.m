//
//  ThreeViewController.m
//  WisdomProtocolKit
//
//  Created by tangjianfeng on 2021/12/20.
//

#import "ThreeViewController.h"
#import "WisdomProtocolKit-Swift.h"


@interface ThreeViewController ()<WisdomControllerObjcProtocol>

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

+ (UIViewController * _Nonnull)wisdomProtocolObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC {
    return nil;
}

+ (UIViewController * _Nonnull)wisdomProtocolObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data {
    return nil;
}

+ (UIViewController * _Nonnull)wisdomProtocolObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data closure:(void (^ _Nonnull)(id _Nonnull))closure {
    return nil;
}

+ (UIViewController * _Nonnull)wisdomProtocolObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data returnClosure:(id  _Nonnull (^ _Nonnull)(id _Nonnull))returnClosure {
    return nil;
}


@end

