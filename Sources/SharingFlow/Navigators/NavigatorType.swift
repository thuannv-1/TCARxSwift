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
