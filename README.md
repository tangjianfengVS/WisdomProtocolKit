# WisdomProtocolKit
WisdomProtocolKit：swift 5.0 协议库. 

协议规定了用来实现某一特定功能所必需的方法和属性。任意能够满足协议要求的类型被称为遵循(conform)这个协议。类，结构体或枚举类型都可以遵循协议，并提供具体实现来完成协议定义的方法和功能。

支持协议路由功能：控制器继承 -> WisdomProtocolController，UIView继承 -> WisdomProtocolView.

View实现协议：
    public class func wisdomProtocol_ViewClass(superview: UIView) -> WisdomProtocolView {
        fatalError("Must Override")
    }

    public class func wisdomProtocol_ViewClass(superview: UIView, data: Any) -> WisdomProtocolView {
        fatalError("Must Override")
    }

    public class func wisdomProtocol_ViewClass(superview: UIView, data: Any, closure: WisdomProtocolClosure) -> WisdomProtocolView {
        fatalError("Must Override")
    }

    public class func wisdomProtocol_ViewClass(superview: UIView, data: Any, returnClosure: WisdomProtocolReturnClosure) -> WisdomProtocolView {
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

Controller实现协议：
    public class func wisdomProtocol_ControllerClass(rootVC: UIViewController) -> WisdomProtocolController{
        fatalError("Must Override")
    }
    
    public class func wisdomProtocol_ControllerClass(rootVC: UIViewController, data: Any) -> WisdomProtocolController{
        fatalError("Must Override")
    }
    
    public class func wisdomProtocol_ControllerClass(rootVC: UIViewController, data: Any, closure: WisdomProtocolClosure) -> WisdomProtocolController{
        fatalError("Must Override")
    }
    
    public class func wisdomProtocol_ControllerClass(rootVC: UIViewController, data: Any, returnClosure: WisdomProtocolReturnClosure) -> WisdomProtocolController{
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
    
    协议路由使用案例：--------------------------------------------------------------------------------------
    @objc func clickRoutorSwiftBtn() {
        
        // 协议 - 路由跳转 to swift VC
        let routerClass: AnyClass? = WisdomProtocolKit.classFromProtocol(fromProtocol: TwoViewVCProtocol.self)
        if let resClass = routerClass as? WisdomProtocolController.Type {
            
            resClass.wisdomProtocolControllerClass(rootVC: self, data: UIColor.white)
        }
    }
    
    @objc func clickRoutorObjcBtn() {
        
        // 协议 - 路由跳转 to objc VC
        let routerClass: AnyClass? = WisdomProtocolKit.classFromProtocol(fromProtocol: ThreeViewProtocol.self)
        if routerClass != nil && WisdomProtocolKit.classConformProtocol(targetClass: routerClass,
                                                                        toProtocol: WisdomControllerObjcProtocol.self){
            
            let _ = routerClass!.wisdomProtocolControlObjcClass(rootVC: self, data: UIColor.white)
        }
    }

    -(void)clickRoutorSwiftBtn{
        // 协议 - 路由跳转 - OC Swift
    
        Protocol *twoViewVCProtocol = [TwoViewController getProtocol];
        Class tagterCla = [WisdomProtocolKit classFromProtocolFromProtocol: twoViewVCProtocol];

        if ([WisdomProtocolKit isFromWisdomProtocolControllerWithSubclass:tagterCla]) {
    
           [tagterCla wisdomProtocolControllerClassWithRootVC:self data:[UIColor whiteColor]];
       }
    }
