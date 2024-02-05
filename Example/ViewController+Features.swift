//
//  ViewController+Features.swift
//  Example
//
//  Created by Thuan Nguyen on 05/02/2024.
//

import UIKit

extension ViewController {
    func generateFeatures() -> [TCARxSwiftFeature] {
        let defaultIcon = UIImage(systemName: "sun.horizon.fill")
        let features: [TCARxSwiftFeature] = [
            .init(data: .init(icon: defaultIcon, title: "Top Down Popup"), action: topDownPopupAction)
        ]
        
        return features
    }
}

extension ViewController {
    @objc
    func topDownPopupAction() {
        
    }
}

