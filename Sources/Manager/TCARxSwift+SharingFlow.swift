//
//  TCARxSwift+SharingFlow.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 23/5/24.
//

import UIKit

// MARK: - SharingFlow Setup
extension TCARxSwift {
    public class SharingFlow { }
}

// MARK: - Setting
extension TCARxSwift.SharingFlow {
    public class Setting {
        public static func instance(navigationController: UINavigationController,
                                    data: SettingDataType,
                                    isShowDoneButton: Bool) -> UIViewController {
            let useCase = SettingUseCase()
            let navigator = SettingNavigator(navigationController: navigationController)
            let viewModel = SettingViewModel(
                useCase: useCase,
                navigator: navigator,
                data: data,
                isShowDoneButton: isShowDoneButton
            )
            let viewController = SettingViewController()
            viewController.bindViewModel(to: viewModel)
            return viewController
        }
        
        public static func push(navigationController: UINavigationController,
                                data: SettingDataType) {
            let vc = instance(navigationController: navigationController,
                              data: data,
                              isShowDoneButton: false)
            navigationController.pushViewController(vc, animated: true)
        }
        
        public static func present(navigationController: UINavigationController,
                                   presentNavController: UINavigationController,
                                   data: SettingDataType) {
            let vc = instance(navigationController: presentNavController,
                              data: data,
                              isShowDoneButton: true)
            presentNavController.viewControllers = [vc]
            navigationController.present(presentNavController, animated: true)
        }
    }
}

// MARK: - WKWebView
extension TCARxSwift.SharingFlow {
    public static func buildWKWebView(navigationController: UINavigationController) {
        
    }
}

// MARK: - SendMail
extension TCARxSwift.SharingFlow {
    public static func buildSendMail(navigationController: UINavigationController) {
        
    }
}
