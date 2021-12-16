//
//  WisdomProtocolManager.swift
//  WisdomProtocolKit
//
//  Created by jianfeng on 2019/3/15.
//  Copyright © 2019年 All over the sky star. All rights reserved.
//

import UIKit

struct WisdomProtocolManager {
    
    static var shared = WisdomProtocolManager()
    
    private var protocolConfig: [String:AnyClass] = [:]
    
    private var protocols: [Protocol] = []
    
    
    // MARK: - regist protocol class config module
    // - Class to conform many Protocol
    // - Protocol to only Class
    // - WisdomProtocol can not regist
    mutating func registProtocolClassConfig(configs: [WisdomProtocolConfigModel], errorClosure: WisdomProtocolErrorClosure){
        var errorList: [String] = []
        
        for configModel in configs {
            
            let key = configModel.configProtocolStr
            let value: AnyClass = configModel.configClass
            
            if WisdomProtocols.contains(key){
                let errorStr = "[WisdomRouterKit] register config model error: ❌" + key + "->" + NSStringFromClass(value) + "❌"
                errorList.append(errorStr)
                print("\n" + errorStr)
                
            }else if protocolConfig[key] != nil {
                let errorStr = "[WisdomRouterKit] register config model error: ❌" + key + "->" + NSStringFromClass(value) + "❌"
                errorList.append(errorStr)
                print("\n" + errorStr)
            }else {
                protocolConfig.updateValue(value, forKey: key)
                
                protocols.append(configModel.configProtocol)
            }
        }
        
        if errorList.count > 0 {
            errorClosure(errorList)
        }
    }
    
    
    // MARK: - get AnyClass
    // get AnyClass of Protocol
    func classFromProtocol(fromProtocol: Protocol?) -> AnyClass?{
        guard (fromProtocol != nil) else {
            return nil
        }
        let protocolKey = NSStringFromProtocol(fromProtocol!)
        return protocolConfig[protocolKey]
    }
    
    
    // MARK: - get Protocol
    // get Protocol of protocol's Name
    func wisdomProtocol(protocolName: String) -> Protocol?{
        
        for configProtocol in protocols {
            let protocolKey = NSStringFromProtocol(configProtocol)
            if protocolKey == protocolName {
                return configProtocol
            }
        }
        return nil
    }
}

