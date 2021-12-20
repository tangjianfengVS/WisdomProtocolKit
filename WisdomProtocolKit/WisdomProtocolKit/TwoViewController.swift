//
//  TwoViewController.swift
//  WisdomProtocolKit
//
//  Created by tangjianfeng on 2021/12/20.
//

import Foundation
import UIKit


@objc protocol TwoViewVCProtocol {
    
}


class TwoViewController: WisdomProtocolController, WisdomRegistProtocol {

    // 协议注册
    static func registProtocolClass() {
        let model = WisdomProtocolConfigModel(configClass: self, configProtocol: TwoViewVCProtocol.self)

        WisdomProtocolKit.registProtocolClassConfigs(configs: [model]) { errorList in
            print(errorList)
        }
    }
    
    
    // 实现：类协议 - rootVC: UIViewController
    override class func wisdomProtocol_ControllerCla(rootVC: UIViewController) -> WisdomProtocolController {
        let VC = Self.init()
        VC.modalPresentationStyle = .fullScreen
        rootVC.present(VC, animated: true, completion: nil)
        return VC
    }
    
    
    // 实现：类协议
    override class func wisdomProtocol_ControllerCla(rootVC: UIViewController, data: Any) -> WisdomProtocolController {
        let VC = Self.init()
        VC.modalPresentationStyle = .fullScreen
        
        if let bgColor = data as? UIColor {
            VC.view.backgroundColor = bgColor
        }
        
        rootVC.present(VC, animated: true, completion: nil)
        return VC
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }

}
