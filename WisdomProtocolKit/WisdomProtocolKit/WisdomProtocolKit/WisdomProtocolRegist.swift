//
//  WisdomProtocolKit.swift
//  WisdomProtocolKit
//
//  Created by jianfeng on 2019/3/15.
//  Copyright © 2019年 All over the sky star. All rights reserved.
//

import UIKit

extension UIApplication {
    
    override open var next: UIResponder? {
        UIApplication.routerKitRunOnce
        return super.next
    }

    
    private static let routerKitRunOnce: Void = {
        WisdomProtocolRegister.protocolRegist()
    }()
}


fileprivate class WisdomProtocolRegister {
    
    static func protocolRegist() {
//        let typeCount = Int(objc_getClassList(nil, 0))
//        let types = UnsafeMutablePointer<AnyClass>.allocate(capacity: typeCount)
//        let autoreleasingTypes = AutoreleasingUnsafeMutablePointer<AnyClass>(types)
//        objc_getClassList(autoreleasingTypes, Int32(typeCount))
//
//        for index in 0 ..< typeCount {
//            (types[index] as? WisdomRouterRegisterProtocol.Type)?.registerRouter()
//        }
//        types.deallocate()
    }
}



//struct WisdomRouterRegisterInfo {
//
//    private(set) var vcClassType: UIViewController.Type!
//
//    private(set) var modelList: [WisdomRouterRegisterModel]=[]
//
//    private(set) var handlerList: [WisdomRouterRegisterHandler]=[]
//
//    init(vcClassType: UIViewController.Type) {
//        self.vcClassType = vcClassType
//    }
//
//    mutating func add(model: WisdomRouterRegisterModel) {
//        self.modelList.append(model)
//    }
//
//    mutating func add(handler: WisdomRouterRegisterHandler) {
//        self.handlerList.append(handler)
//    }
//}
//
//
//struct WisdomRouterRegisterModel {
//
//    private(set) var modelClass: WisdomRouterModel.Type?
//    
//    private(set) var modelListName: String=""
//
//    init(modelListName: String, modelClass: WisdomRouterModel.Type) {
//        self.modelListName = modelListName
//        self.modelClass = modelClass
//    }
//    
//    mutating func updateModelClass(modelClass: WisdomRouterModel.Type) {
//        self.modelClass = modelClass
//    }
//}


//struct WisdomRouterRegisterHandler{
    
//    private(set) var handlerValue: RouterRegisterHandler!
//    
//    private(set) var handlerName: String!
//    
//    init(handerName:String, handlerValue: @escaping RouterRegisterHandler) {
//        self.handlerName = handerName
//        self.handlerValue = handlerValue
//    }
//    
//    mutating func updateHanderValue(handlerValue: @escaping RouterRegisterHandler){
//        self.handlerValue = handlerValue
//    }
//}


//struct WisdomRouterRegisterProperty{
//
//    private(set) var nameType: String!
//
//    private(set) var name: String!
//
//    private(set) var value: Any?
//
//    init(name:String, nameType:String ) {
//        self.name = name
//        self.nameType = nameType
//    }
//
//    mutating func updateValue(value: Any) {
//        self.value = value
//    }
//}
