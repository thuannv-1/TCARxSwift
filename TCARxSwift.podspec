Pod::Spec.new do |s|
  
    s.name             = 'TCARxSwift'
    s.version          = '0.1.19'
    s.summary          = 'TCARxSwift is ......'
    s.homepage         = 'https://github.com/thuannv-1/TCARxSwift'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'tk1' => 'thuan2609.tk1@gmail.com' }
    s.source           = { :git => 'https://github.com/thuannv-1/TCARxSwift.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '14.0'
    s.source_files = 'Sources/**/*.swift'
    s.swift_version = '5.0'
    
    s.dependency 'RxSwift', '~> 6.6.0'
    s.dependency 'RxCocoa', '~> 6.6.0'
    
    s.dependency 'Localize-Swift', '~> 3.2'
    s.dependency 'Reusable', '~> 4.1.2'
    s.dependency 'Then', '~> 3.0.0'
    s.dependency 'SDWebImage', '~> 5.18.10'
    s.dependency 'SnapKit', '~> 5.0.0'
end
