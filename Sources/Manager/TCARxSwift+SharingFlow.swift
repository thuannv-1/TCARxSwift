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
    public static func buildSetting(navigationController: UINavigationController,
                                    style: TransitionStyle,
                                    data: SettingDataType) {
        let useCase = SettingUseCase()
        let navigator = SettingNavigator(navigationController: navigationController)
        let viewModel = SettingViewModel(
            useCase: useCase,
            navigator: navigator,
            data: data
        )
        let viewController = SettingViewController()
        viewController.bindViewModel(to: viewModel)
        navigationController.goTo(viewController: viewController, style: style)
    }
}

// MARK: - WKWebView
extension TCARxSwift.SharingFlow {
    public static func buildWKWebView(navigationController: UINavigationController,
                                      style: TransitionStyle) {
        
    }
}

// MARK: - SendMail
extension TCARxSwift.SharingFlow {
    public static func buildSendMail(navigationController: UINavigationController,
                                     style: TransitionStyle) {
        
    }
}
