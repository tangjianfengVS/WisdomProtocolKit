//
//  WisdomRouterModel.swift
//  WisdomRouterKitDemo
//
//  Created by jianfeng on 2019/3/14.
//  Copyright © 2019年 All over the sky star. All rights reserved.
//

import UIKit


//MARK: - Router Config Module' Model
public struct WisdomProtocolConfigModel {

    public let configClass: AnyClass
    
    public let configProtocol: Protocol

    public let configProtocolStr: String

    public init(configClass: AnyClass, configProtocol: Protocol) {
        self.configClass = configClass
        self.configProtocol = configProtocol
        self.configProtocolStr = NSStringFromProtocol(configProtocol)
    }
}



@objc public class WisdomProtocolObject: NSObject, WisdomProtocol, WisdomClassProtocol {
    
    static public func wisdomProtocolClass(data: Any){
        wisdomProtocol_Class(data: data)
    }
    
    static public func wisdomProtocolClass(data: Any, closure: WisdomProtocolClosure){
        wisdomProtocol_Class(data: data, closure: closure)
    }
    
    static public func wisdomProtocolClass(data: Any, returnClosure: WisdomProtocolReturnClosure){
        wisdomProtocol_Class(data: data, returnClosure: returnClosure)
    }
    
    
    public class func wisdomProtocol_Class(data: Any){
        fatalError("Must Override")
    }
    
    public class func wisdomProtocol_Class(data: Any, closure: WisdomProtocolClosure){
        fatalError("Must Override")
    }
    
    public class func wisdomProtocol_Class(data: Any, returnClosure: WisdomProtocolReturnClosure){
        fatalError("Must Override")
    }
    
    
    public func wisdomProtocol(data: Any) {
        fatalError("Must Override")
    }
    
    public func wisdomProtocol(data: Any, closure: WisdomProtocolClosure) {
        fatalError("Must Override")
    }
    
    public func wisdomProtocol(data: Any, returnClosure: WisdomProtocolReturnClosure) {
        fatalError("Must Override")
    }
    
}
