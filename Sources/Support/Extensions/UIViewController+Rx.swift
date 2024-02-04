//
//  UIViewController+Rx.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 21/03/2023.
//

import UIKit
import RxSwift
import RxCocoa

public extension Reactive where Base: UIViewController {
    var error: Binder<Error> {
        return Binder(base) { viewController, error in
            viewController.showError(message: error.localizedDescription)
        }
    }
    
    var isLoading: Binder<Bool> {
        return Binder(base) { viewController, isLoading in
//            if isLoading {
//                let hud = MBProgressHUD.showAdded(to: viewController.view, animated: true)
//                hud.offset.y = -30
//            } else {
//                MBProgressHUD.hide(for: viewController.view, animated: true)
//            }
        }
    }
}
