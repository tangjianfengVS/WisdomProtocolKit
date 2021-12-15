//
//  WisdomProtocolKit.swift
//  WisdomProtocolKit
//
//  Created by jianfeng on 2019/3/28.
//  Copyright © 2019年 All over the sky star. All rights reserved.
//

import UIKit


public typealias WisdomProtocolClosure = (Any) -> Void

public typealias WisdomProtocolReturnClosure = (Any) -> (Any)

public typealias WisdomProtocolErrorClosure = ([String]) -> Void


public let WisdomProtocols: [String] = [NSStringFromProtocol(WisdomProtocol.self),
                                        NSStringFromProtocol(WisdomClassProtocol.self),
                                        NSStringFromProtocol(WisdomConfigProtocol.self),
                                        NSStringFromProtocol(WisdomViewProtocol.self),
                                        NSStringFromProtocol(WisdomControllerProtocol.self)]

