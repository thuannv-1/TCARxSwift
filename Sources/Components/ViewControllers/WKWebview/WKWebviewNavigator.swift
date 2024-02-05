//
//  WKWebviewNavigator.swift
//  cleanner-ios
//
//  Created by Nguyen Van Thuan on 04/08/2023.
//

import UIKit

protocol WKWebviewNavigatorType {
    func dimiss()
}

struct WKWebviewNavigator: WKWebviewNavigatorType {
    unowned let navigationController: UINavigationController
    
    func dimiss() {
        navigationController.dismiss(animated: true)
    }
}
