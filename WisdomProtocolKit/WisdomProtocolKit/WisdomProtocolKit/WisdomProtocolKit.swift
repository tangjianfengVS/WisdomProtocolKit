//
//  WisdomProtocolKit.swift
//  WisdomProtocolKit
//
//  Created by jianfeng on 2019/3/14.
//  Copyright © 2019年 All over the sky star. All rights reserved.
//

import UIKit


public class WisdomProtocolKit: NSObject {
    
    
    // MARK: - regist protocol
    // - to realize: WisdomRegistProtocol -> static func registProtocolClass()
    @objc public class func wisdomProtocolRegist(){
        WisdomProtocolManager.shared.wisdomProtocolRegist()
    }
    
    
    // MARK: - regist protocol class config module
    // - parame: [WisdomRouterConfigModel]
    @objc public class func registProtocolClassConfigs(configs: [WisdomProtocolConfigModel],
                                                       errorClosure: WisdomProtocolErrorClosure){
        WisdomProtocolManager.shared.registProtocolClassConfigs(configs: configs, errorClosure: errorClosure)
    }
    
    
    // MARK: - get wisdom protocol with protocol name
    // - parame: String
    // - return: Protocol?
    @objc public class func wisdomProtocol(protocolName: String) -> Protocol?{
        return WisdomProtocolManager.shared.wisdomProtocol(protocolName: protocolName)
    }
    
    
    // MARK: - get class from protocol
    // - parame: Protocol
    // - return: AnyClass?
    @objc public class func classFromProtocol(fromProtocol: Protocol?) -> AnyClass?{
        return WisdomProtocolManager.shared.classFromProtocol(fromProtocol: fromProtocol)
    }
    
    
    // MARK: - check targetClass conform protocol
    // - parame: AnyClass?
    // - parame: Protocol
    // - return: Bool
    @objc public class func classConformProtocol(targetClass: AnyClass?, toProtocol: Protocol) -> Bool{
        if let resClass = targetClass {
            return resClass.conforms(to: toProtocol)
        }
        return false
    }

}

