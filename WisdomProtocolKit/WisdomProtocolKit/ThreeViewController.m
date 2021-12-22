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

@property(strong, nonatomic) UIButton *toOCBtn;
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
    
    _toOCBtn = [[UIButton alloc] init];
    
    [self.view addSubview: _closeBtn];
    
    [self.view addSubview: _toOCBtn];
    
    _toOCBtn.frame = CGRectMake(30, 120, UIScreen.mainScreen.bounds.size.width-60, 40);
    
    _toOCBtn.layer.borderColor = [UIColor orangeColor].CGColor;
    
    _toOCBtn.layer.borderWidth = 2;
    
    [_toOCBtn setTitle:@"OC To Swift Page: 路由控制器跳转" forState:UIControlStateNormal];
    
    _toOCBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    
    [_toOCBtn setTitleColor:[UIColor orangeColor] forState: UIControlStateNormal];
    
    [_toOCBtn addTarget:self action:@selector(clickRoutorSwiftBtn) forControlEvents:UIControlEventTouchUpInside];
    
    
    __weak __typeof(self)weakSelf = self;
    _closeBtn.closure = ^{
               
        [weakSelf dismissViewControllerAnimated:true completion:nil];
    };
}


-(void)clickRoutorSwiftBtn{
    // 协议 - 路由跳转 - OC Swift
    
    Protocol *twoViewVCProtocol = [TwoViewController getProtocol];
    Class tagterCla = [WisdomProtocolKit classFromProtocolFromProtocol: twoViewVCProtocol];

    if ([WisdomProtocolKit isSuperWisdomProtocolControllerWithSubclass:tagterCla]) {
    
        [tagterCla wisdomProtocolControllerClassWithRootVC:self data:[UIColor whiteColor]];
    }
}


// ------------------------ WisdomControllerObjcProtocol ----------------------------
+ (UIViewController * _Nonnull)wisdomProtocolControlObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC {
    ThreeViewController *VC = [[ThreeViewController alloc] init];
    VC.modalPresentationStyle = UIModalPresentationFullScreen;

    [rootVC presentViewController:VC animated:true completion:nil];
    return VC;
}

+ (UIViewController * _Nonnull)wisdomProtocolControlObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data {
    ThreeViewController *VC = [[ThreeViewController alloc] init];
    VC.modalPresentationStyle = UIModalPresentationFullScreen;

    [rootVC presentViewController:VC animated:true completion:nil];
    return VC;
}

+ (UIViewController * _Nonnull)wisdomProtocolControlObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data closure:(void (^ _Nonnull)(id _Nonnull))closure {
    ThreeViewController *VC = [[ThreeViewController alloc] init];
    VC.modalPresentationStyle = UIModalPresentationFullScreen;

    [rootVC presentViewController:VC animated:true completion:nil];
    return VC;
}

+ (UIViewController * _Nonnull)wisdomProtocolControlObjcClassWithRootVC:(UIViewController * _Nonnull)rootVC data:(id _Nonnull)data returnClosure:(id  _Nonnull (^ _Nonnull)(id _Nonnull))returnClosure {
    ThreeViewController *VC = [[ThreeViewController alloc] init];
    VC.modalPresentationStyle = UIModalPresentationFullScreen;

    [rootVC presentViewController:VC animated:true completion:nil];
    return VC;
}


@end


