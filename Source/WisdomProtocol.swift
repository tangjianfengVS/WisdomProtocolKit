//
//  WisdomProtocolKit.swift
//  WisdomProtocolKit
//
//  Created by jianfeng on 2019/10/8.
//  Copyright © 2019 All over the sky star. All rights reserved.
//

import UIKit


// MARK: - Regist Protocol
@objc public protocol WisdomRegistProtocol {
    
    // register all class
    static func registProtocolClass()
}



// MARK: - Base Protocol
@objc public protocol WisdomProtocol {
        
    // - parameter : Any
    func wisdomProtocol(data: Any)
    
    // - parameter : Any, WisdomProtocolClosure
    func wisdomProtocol(data: Any, closure: WisdomProtocolClosure)
    
    // - parameter : Any, WisdomProtocolReturnClosure
    func wisdomProtocol(data: Any, returnClosure: WisdomProtocolReturnClosure)
}



// MARK: - Class Protocol
@objc public protocol WisdomClassProtocol {
        
    // - parameter : Any
    static func wisdomProtocolClass(data: Any)
    
    // - parameter : Any, WisdomProtocolClosure
    static func wisdomProtocolClass(data: Any, closure: WisdomProtocolClosure)
    
    // - parameter : Any, WisdomProtocolReturnClosure
    static func wisdomProtocolClass(data: Any, returnClosure: WisdomProtocolReturnClosure)
}



// MARK: - Swift Base Protocol
public protocol WisdomSwiftProtocol {
        
    // - parameter : Any
    func wisdomProtocolSwift(data: Any)
    
    // - parameter : Any, WisdomProtocolClosure
    func wisdomProtocolSwift(data: Any, closure: WisdomProtocolClosure)
    
    // - parameter : Any, WisdomProtocolReturnClosure
    func wisdomProtocolSwift(data: Any, returnClosure: WisdomProtocolReturnClosure)
}



// MARK: - Swift Class Protocol
public protocol WisdomSwiftClassProtocol {
        
    // - parameter : Any
    static func wisdomProtocolSwiftClass(data: Any)
    
    // - parameter : Any, WisdomProtocolClosure
    static func wisdomProtocolSwiftClass(data: Any, closure: WisdomProtocolClosure)
    
    // - parameter : Any, WisdomProtocolReturnClosure
    static func wisdomProtocolSwiftClass(data: Any, returnClosure: WisdomProtocolReturnClosure)
}



// MARK: - Router Controller Protocol Of UIViewController
@objc public protocol WisdomControllerProtocol where Self: WisdomProtocolController {
    
    // - parameter : WisdomProtocolController
    @discardableResult
    static func wisdomProtocolControllerClass(rootVC: UIViewController) -> WisdomProtocolController
    
    // - parameter : WisdomProtocolController, Any
    @discardableResult
    static func wisdomProtocolControllerClass(rootVC: UIViewController, data: Any) -> WisdomProtocolController
    
    // - parameter : WisdomProtocolController, Any, WisdomRouterClosure
    @discardableResult
    static func wisdomProtocolControllerClass(rootVC: UIViewController, data: Any, closure: WisdomProtocolClosure) -> WisdomProtocolController
    
    // - parameter : WisdomProtocolController, Any, WisdomRouterReturnClosure
    @discardableResult
    static func wisdomProtocolControllerClass(rootVC: UIViewController, data: Any, returnClosure: WisdomProtocolReturnClosure) -> WisdomProtocolController
}



// MARK: - Router View Protocol Of UIView
@objc public protocol WisdomViewProtocol where Self: WisdomProtocolView {
    
    // - parameter : UIView
    // - return    : WisdomRouterView
    static func wisdomProtocolViewClass(superview: UIView) -> WisdomProtocolView
    
    // - parameter : UIView, Any
    // - return    : WisdomRouterView
    static func wisdomProtocolViewClass(superview: UIView, data: Any) -> WisdomProtocolView
    
    // - parameter : UIView, Any, WisdomProtocolClosure
    // - return    : WisdomRouterView
    static func wisdomProtocolViewClass(superview: UIView, data: Any, closure: WisdomProtocolClosure) -> WisdomProtocolView
    
    // - parameter : UIView, Any, WisdomProtocolReturnClosure
    // - return    : WisdomRouterView
    static func wisdomProtocolViewClass(superview: UIView, data: Any, returnClosure: WisdomProtocolReturnClosure) -> WisdomProtocolView
}



// MARK: - Objc Class Controller Protocol
@objc public protocol WisdomControllerObjcProtocol where Self: UIViewController {
    
    // - parameter : UIViewController
    // - return    : UIViewController
    static func wisdomProtocolControlObjcClass(rootVC: UIViewController) -> UIViewController

    // - parameter : UIViewController, Any
    // - return    : UIViewController
    static func wisdomProtocolControlObjcClass(rootVC: UIViewController, data: Any) -> UIViewController

    // - parameter : UIViewController, Any, WisdomProtocolClosure
    // - return    : UIViewController
    static func wisdomProtocolControlObjcClass(rootVC: UIViewController, data: Any, closure: WisdomProtocolClosure) -> UIViewController

    // - parameter : UIViewController, Any, WisdomProtocolReturnClosure
    // - return    : UIViewController
    static func wisdomProtocolControlObjcClass(rootVC: UIViewController, data: Any, returnClosure: WisdomProtocolReturnClosure) -> UIViewController
}



// MARK: - Objc Class View Protocol
@objc public protocol WisdomViewObjcProtocol where Self: UIView {
    
    // - parameter : UIView
    // - return    : UIView
    static func wisdomProtocolViewObjcClass(superview: UIView) -> UIView

    // - parameter : UIView, Any
    // - return    : UIView
    static func wisdomProtocolViewObjcClass(superview: UIView, data: Any) -> UIView

    // - parameter : UIView, Any, WisdomProtocolClosure
    // - return    : UIView
    static func wisdomProtocolViewObjcClass(superview: UIView, data: Any, closure: WisdomProtocolClosure) -> UIView

    // - parameter : UIView, Any, WisdomProtocolReturnClosure
    // - return    : UIView
    static func wisdomProtocolViewObjcClass(superview: UIView, data: Any, returnClosure: WisdomProtocolReturnClosure) -> UIView
}