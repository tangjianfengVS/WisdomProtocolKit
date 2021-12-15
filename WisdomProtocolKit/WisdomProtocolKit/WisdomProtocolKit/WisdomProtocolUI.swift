//
//  WisdomRouterUI.swift
//  WisdomRouterKit
//
//  Created by jianfeng on 2021/12/5.
//  Copyright © 2021 All over the sky star. All rights reserved.
//

import UIKit

@objc public class WisdomProtocolView: UIView, WisdomViewProtocol, WisdomProtocol {
    
    public static func wisdomProtocolView(superview: UIView) -> WisdomProtocolView {
        return wisdomProtocol_View(superview: superview)
    }
    
    public static func wisdomProtocolView(superview: UIView, data: Any) -> WisdomProtocolView {
        return wisdomProtocol_View(superview: superview, data: data)
    }
    
    public static func wisdomProtocolView(superview: UIView, data: Any, closure: WisdomProtocolClosure) -> WisdomProtocolView {
        return wisdomProtocol_View(superview: superview, data: data, closure: closure)
    }
    
    public static func wisdomProtocolView(superview: UIView, data: Any, returnClosure: WisdomProtocolReturnClosure) -> WisdomProtocolView {
        return wisdomProtocol_View(superview: superview, data: data, returnClosure: returnClosure)
    }
    
    
    public class func wisdomProtocol_View(superview: UIView) -> WisdomProtocolView {
        fatalError("Must Override")
    }

    public class func wisdomProtocol_View(superview: UIView, data: Any) -> WisdomProtocolView {
        fatalError("Must Override")
    }

    public class func wisdomProtocol_View(superview: UIView, data: Any, closure: WisdomProtocolClosure) -> WisdomProtocolView {
        fatalError("Must Override")
    }

    public class func wisdomProtocol_View(superview: UIView, data: Any, returnClosure: WisdomProtocolReturnClosure) -> WisdomProtocolView {
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



@objc public class WisdomProtocolController: UIViewController, WisdomControllerProtocol, WisdomProtocol {
    
    @discardableResult
    public static func wisdomProtocolController(rootVC: UIViewController) -> WisdomProtocolController{
        return wisdomProtocol_Controller(rootVC: rootVC)
    }
    
    @discardableResult
    public static func wisdomProtocolController(rootVC: UIViewController, data: Any) -> WisdomProtocolController{
        return wisdomProtocol_Controller(rootVC: rootVC, data: data)
    }
    
    @discardableResult
    public static func wisdomProtocolController(rootVC: UIViewController, data: Any, closure: WisdomProtocolClosure) -> WisdomProtocolController{
        return wisdomProtocol_Controller(rootVC: rootVC, data: data, closure: closure)
    }
    
    @discardableResult
    public static func wisdomProtocolController(rootVC: UIViewController, data: Any, returnClosure: WisdomProtocolReturnClosure) -> WisdomProtocolController{
        return wisdomProtocol_Controller(rootVC: rootVC, data: data, returnClosure: returnClosure)
    }
    
    
    public class func wisdomProtocol_Controller(rootVC: UIViewController) -> WisdomProtocolController{
        fatalError("Must Override")
    }
    
    public class func wisdomProtocol_Controller(rootVC: UIViewController, data: Any) -> WisdomProtocolController{
        fatalError("Must Override")
    }
    
    public class func wisdomProtocol_Controller(rootVC: UIViewController, data: Any, closure: WisdomProtocolClosure) -> WisdomProtocolController{
        fatalError("Must Override")
    }
    
    public class func wisdomProtocol_Controller(rootVC: UIViewController, data: Any, returnClosure: WisdomProtocolReturnClosure) -> WisdomProtocolController{
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
