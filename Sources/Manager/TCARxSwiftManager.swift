//
//  TCARxSwiftManager.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 23/5/24.
//

import UIKit

public enum TransitionStyle {
    case present
    case push
}

extension UINavigationController {
    func goTo(viewController: UIViewController, style: TransitionStyle) {
        switch style {
        case .present:
            self.present(viewController, animated: true)
        case .push:
            self.pushViewController(viewController, animated: true)
        }
    }
}

public class TCARxSwift { }
