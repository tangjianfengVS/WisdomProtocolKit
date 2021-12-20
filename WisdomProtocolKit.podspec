Pod::Spec.new do |s|
  s.name         = "WisdomProtocolKit"
  s.version      = "0.0.1"
  s.summary      = "A wisdom protocol SDK"
  s.description  = "A wisdom protocol SDK."

  s.homepage     = "https://github.com/tangjianfengVS/WisdomProtocolKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "tangjianfeng" => "497609288@qq.com" }
  s.platform     = :ios, "8.0"
  s.swift_version= '5.0'
  s.ios.deployment_target = "8.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/tangjianfengVS/WisdomProtocolKit.git", :tag => s.version }
  s.source_files  = "WisdomProtocolKit/WisdomProtocolKit/WisdomProtocolKit/*.{swift,h,m}"

  #s.resources = "WisdomProtocolKit/WisdomProtocolKit/WisdomProtocolKit/WisdomProtocolKit.bundle"
  #s.dependency ""
end
