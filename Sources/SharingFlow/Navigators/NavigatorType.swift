//
//  NavigatorType.swift
//  TCARxSwift
//
//  Created by Duy Nguyễn on 04/02/2024.
//

import UIKit

public protocol NavigatorType {
    var navigationController: UINavigationController { get set }
}

public extension NavigatorType {
    func dismiss() {
        navigationController.dismiss(animated: true)
    }
    
    func dismissWithoutAnimation() {
        navigationController.dismiss(animated: false)
    }
    
    func pop() {
        navigationController.popViewController(animated: true)
    }
    
    func popWithoutAnimation() {
        navigationController.popViewController(animated: false)
    }
}

extension NavigatorType {
    func toSafari(_ urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
    
    func share(urlString: String) {
        let ac = UIActivityViewController(activityItems: [urlString],
                                          applicationActivities: nil)
        navigationController.present(ac, animated: true)
    }
    
    func openAppStore(urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
        UIApplication.shared.open(url)
    }
}
