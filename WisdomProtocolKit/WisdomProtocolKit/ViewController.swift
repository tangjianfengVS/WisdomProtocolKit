//
//  ViewController.swift
//  WisdomProtocolKit
//
//  Created by tangjianfeng on 2021/12/14.
//

import UIKit

class ViewController: UIViewController {
    
    let btn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(white: 0.8, alpha: 1)
        // Do any additional setup after loading the view.
        
        // WisdomProtocolKit: 路由控制器跳转
        view.addSubview(btn)
        
        btn.frame = CGRect.init(x: 30, y: 80, width: UIScreen.main.bounds.width-60, height: 40)
        
        btn.layer.borderColor = UIColor.red.cgColor
        
        btn.layer.borderWidth = 2
        
        btn.setTitle("WisdomProtocolKit: 路由控制器跳转", for: .normal)
        
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        btn.setTitleColor(UIColor.red, for: .normal)
        
        btn.addTarget(self, action: #selector(clickRoutorVCBtn), for: .touchUpInside)
    }

    
    
    @objc func clickRoutorVCBtn() {
        
        let routerClass: AnyClass? = WisdomProtocolKit.classFromProtocol(fromProtocol: TwoViewVCProtocol.self)
        if let resClass = routerClass as? WisdomProtocolController.Type {
            
            resClass.wisdomProtocolControllerCla(rootVC: self, data: UIColor.white)
        }
    }
    
}




