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



@objc public class CloseBtn: UIButton{
    
    @objc public var closure: (()->Void)?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect.init(x: UIScreen.main.bounds.width-60, y: 50, width: 35, height: 35)
        
        layer.borderColor = UIColor.red.cgColor
        
        layer.borderWidth = 1.5
        
        setTitle("返回", for: .normal)
        
        titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        setTitleColor(UIColor.red, for: .normal)
        
        addTarget(self, action: #selector(clickCloseBtn), for: .touchUpInside)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func clickCloseBtn(){
        if closure != nil {
            closure!()
        }
    }
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
    override class func wisdomProtocol_ControllerClass(rootVC: UIViewController) -> WisdomProtocolController {
        let VC = Self.init()
        VC.modalPresentationStyle = .fullScreen
        rootVC.present(VC, animated: true, completion: nil)
        return VC
    }
    
    
    // 实现：类协议
    override class func wisdomProtocol_ControllerClass(rootVC: UIViewController, data: Any) -> WisdomProtocolController {
        let VC = Self.init()
        VC.modalPresentationStyle = .fullScreen
        
        if let bgColor = data as? UIColor {
            VC.view.backgroundColor = bgColor
        }
        
        rootVC.present(VC, animated: true, completion: nil)
        return VC
    }
    
    
    let closeBtn = CloseBtn()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        
        view.addSubview(closeBtn)
        
        closeBtn.closure = {[weak self] in
            self?.dismiss(animated: true)
        }
    }

}

