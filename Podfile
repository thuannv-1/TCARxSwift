platform :ios, '14.0'

target 'TCARxSwift' do
  use_frameworks!
  
  # Rx
  pod 'RxSwift', '6.6.0'
  pod 'RxCocoa', '6.6.0'

  target 'TCARxSwiftTests' do
    
  end
  
  target 'Example' do
    use_frameworks!
    # Pods for Example
  end
  
end

post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
            end
        end
    end
end
