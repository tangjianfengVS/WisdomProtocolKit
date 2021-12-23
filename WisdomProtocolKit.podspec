Pod::Spec.new do |s|
  s.name         = "WisdomProtocolKit"
  s.version      = "0.0.6"
  s.summary      = "A wisdom protocol SDK"
  s.description  = "A wisdom protocol SDK.A protocol specifies the methods and attributes necessary to implement a particular function.
All types that meet the requirements of the agreement are called conform.
Classes, structs, or enumerated types can all follow the protocol and provide concrete implementations to accomplish the methods and functions defined by the protocol."

  s.homepage     = "https://github.com/tangjianfengVS/WisdomProtocolKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "tangjianfeng" => "497609288@qq.com" }
  s.platform     = :ios, "9.0"
  s.swift_version= '5.0'
  s.ios.deployment_target = "9.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/tangjianfengVS/WisdomProtocolKit.git", :tag => s.version }
  s.source_files  = "Source/*.{swift,h,m}"

end
