//
//  WisdomProtocolKit+Regist.m
//  WisdomProtocolKit
//
//  Created by tangjianfeng on 2021/12/17.
//

#import "WisdomProtocolRegist.h"
#import <objc/runtime.h>

@implementation WisdomProtocolRegist

+ (void)load {
    Class protocolKitCla = objc_getClass("WisdomProtocolKit.WisdomProtocolKit");
    SEL sel = NSSelectorFromString(@"wisdomProtocolRegist");
    
    IMP imp = [protocolKitCla methodForSelector:sel];
    void (*func)(id, SEL) = (void *)imp;
    func(protocolKitCla, sel);
}

@end
