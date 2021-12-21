//
//  ThreeViewController.m
//  WisdomProtocolKit
//
//  Created by tangjianfeng on 2021/12/20.
//

#import "ThreeViewController.h"
#import "WisdomProtocolKit-Swift.h"


@interface ThreeViewController ()<WisdomControllerObjcProtocol>
@property(strong, nonatomic) CloseBtn *closeBtn;
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
    
    _closeBtn = [[CloseBtn alloc] init];
    
    [self.view addSubview: _closeBtn];
    
    __weak __typeof(self)weakSelf = self;
    _closeBtn.closure = ^{
        
        [weakSelf dismissViewControllerAnimated:true completion:nil];
    };
}


+ (UIViewController * _Nonnull)wisdomProtocolObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC {
    ThreeViewController *VC = [[ThreeViewController alloc] init];
    VC.modalPresentationStyle = UIModalPresentationFullScreen;

    [rootVC presentViewController:VC animated:true completion:nil];
    return VC;
}

+ (UIViewController * _Nonnull)wisdomProtocolObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data {
    ThreeViewController *VC = [[ThreeViewController alloc] init];
    VC.modalPresentationStyle = UIModalPresentationFullScreen;

    [rootVC presentViewController:VC animated:true completion:nil];
    return VC;
}

+ (UIViewController * _Nonnull)wisdomProtocolObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data closure:(void (^ _Nonnull)(id _Nonnull))closure {
    ThreeViewController *VC = [[ThreeViewController alloc] init];
    VC.modalPresentationStyle = UIModalPresentationFullScreen;

    [rootVC presentViewController:VC animated:true completion:nil];
    return VC;
}

+ (UIViewController * _Nonnull)wisdomProtocolObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data returnClosure:(id  _Nonnull (^ _Nonnull)(id _Nonnull))returnClosure {
    ThreeViewController *VC = [[ThreeViewController alloc] init];
    VC.modalPresentationStyle = UIModalPresentationFullScreen;

    [rootVC presentViewController:VC animated:true completion:nil];
    return VC;
}


@end


