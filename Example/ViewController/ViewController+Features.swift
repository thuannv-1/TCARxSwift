//
//  ViewController+Features.swift
//  Example
//
//  Created by Thuan Nguyen on 05/02/2024.
//

import UIKit
import TCARxSwift

extension ViewController {
    var currentNavi: UINavigationController {
        return navigationController ?? UINavigationController()
    }
    
    func generateFeatures() -> [TCARxSwiftFeature] {
        let defaultIcon = UIImage(systemName: "sun.horizon.fill")
        let features: [TCARxSwiftFeature] = [
            .init(data: .init(icon: defaultIcon, title: "Setting Flow"), action: settingFlowAction),
            .init(data: .init(icon: defaultIcon, title: "Send Mail"), action: sendMailFlowAction),
            .init(data: .init(icon: defaultIcon, title: "WKWeb View"), action: wkWebViewFlowAction)
            
        ]
        
        return features
    }
}

extension ViewController {
    @objc
    func topDownPopupAction() {
        
    }
    
    @objc
    func settingFlowAction() {
        struct SettingData: SettingDataType {
            var appStoreUrl: String?
        }
        
        let settingData = SettingData(appStoreUrl: "google.com")
        
        TCARxSwift.SharingFlow.buildSetting(
            navigationController: currentNavi,
            style: .push,
            data: settingData
        )
    }
    
    @objc
    func sendMailFlowAction() {
        TCARxSwift.SharingFlow.buildSendMail(
            navigationController: currentNavi,
            style: .push
        )
    }
    
    @objc
    func wkWebViewFlowAction() {
        TCARxSwift.SharingFlow.buildWKWebView(
            navigationController: currentNavi,
            style: .push
        )
    }
}

