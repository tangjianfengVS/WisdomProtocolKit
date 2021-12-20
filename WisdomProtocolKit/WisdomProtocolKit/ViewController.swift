//
//  ViewController.swift
//  WisdomProtocolKit
//
//  Created by tangjianfeng on 2021/12/14.
//

import UIKit


class ViewController: UIViewController {
    
    let swiftBtn = UIButton()
    
    let ocBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(white: 0.8, alpha: 1)
        // Do any additional setup after loading the view.
        
        // WisdomProtocolKit: 路由控制器跳转
        view.addSubview(swiftBtn)
        
        swiftBtn.frame = CGRect.init(x: 30, y: 80, width: UIScreen.main.bounds.width-60, height: 40)
        
        swiftBtn.layer.borderColor = UIColor.red.cgColor
        
        swiftBtn.layer.borderWidth = 2
        
        swiftBtn.setTitle("To Swift Demo: 路由控制器跳转", for: .normal)
        
        swiftBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        swiftBtn.setTitleColor(UIColor.red, for: .normal)
        
        swiftBtn.addTarget(self, action: #selector(clickRoutorSwiftBtn), for: .touchUpInside)
        
        // WisdomProtocolKit: 路由控制器跳转
        view.addSubview(ocBtn)
        
        ocBtn.frame = CGRect.init(x: 30, y: 150, width: UIScreen.main.bounds.width-60, height: 40)
        
        ocBtn.layer.borderColor = UIColor.blue.cgColor
        
        ocBtn.layer.borderWidth = 2
        
        ocBtn.setTitle("To OC Demo: 路由控制器跳转", for: .normal)
        
        ocBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        ocBtn.setTitleColor(UIColor.blue, for: .normal)
        
        ocBtn.addTarget(self, action: #selector(clickRoutorObjcBtn), for: .touchUpInside)
    }

    
    @objc func clickRoutorSwiftBtn() {
        
        // 协议 - 路由跳转
        let routerClass: AnyClass? = WisdomProtocolKit.classFromProtocol(fromProtocol: TwoViewVCProtocol.self)
        if let resClass = routerClass as? WisdomProtocolController.Type {
            
            resClass.wisdomProtocolControllerClass(rootVC: self, data: UIColor.white)
        }
    }
    
    
    @objc func clickRoutorObjcBtn() {
        
        // 协议 - 路由跳转
        let routerClass: AnyClass? = WisdomProtocolKit.classFromProtocol(fromProtocol: ThreeViewProtocol.self)
        if routerClass != nil && WisdomProtocolKit.classConformProtocol(targetClass: routerClass,
                                                                        toProtocol: WisdomControllerObjcProtocol.self){
            let _ = routerClass!.wisdomProtocolObjcClass(rootVC: self, data: UIColor.white)
        }
    }
    
}


@objc protocol ThreeViewProtocol {
    
    
}


