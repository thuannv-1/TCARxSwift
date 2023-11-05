Pod::Spec.new do |s|
  
    s.name             = 'TCARxSwift'
    s.version          = '0.1.5'
    s.summary          = 'TCARxSwift is ......'
    s.homepage         = 'https://github.com/thuannv-1/TCARxSwift'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'tk1' => 'thuan2609.tk1@gmail.com' }
    s.source           = { :git => 'https://github.com/thuannv-1/TCARxSwift.git', :tag => s.version.to_s }
    s.ios.deployment_target = '14.0'
    s.source_files = 'TCARxSwift/**/*.swift'
    s.swift_version = '5.0'
end
