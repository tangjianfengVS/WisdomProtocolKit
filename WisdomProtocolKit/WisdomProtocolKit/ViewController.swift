//
//  ViewController.swift
//  WisdomProtocolKit
//
//  Created by tangjianfeng on 2021/12/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }


}



class TwoViewController: UIViewController, WisdomRegistProtocol {
    
    static func registerProtocolClass() {
        let model = WisdomProtocolConfigModel(configClass: self, configProtocol: TwoViewVCProtocol.self)

        WisdomProtocolKit.registProtocolClassConfig(configs: [model]) { errorList in
            print(errorList)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }

}


@objc protocol TwoViewVCProtocol {
    
}
