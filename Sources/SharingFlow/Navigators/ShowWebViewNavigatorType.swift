//
//  ShowWebViewNavigatorType.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 05/02/2024.
//

import UIKit

public protocol ShowWebViewNavigatorType: NavigatorType { }

public extension ShowWebViewNavigatorType {
    func presentWebView(title: String, url: String) {
        let navigation = UINavigationController()
        let navigator = WKWebviewNavigator(navigationController: navigationController)
        let useCase = WKWebviewUseCase()
        let viewModel = WKWebviewViewModel(navigator: navigator,
                                           useCase: useCase,
                                           url: url,
                                           html: nil,
                                           title: title)
        let viewController = WKWebviewViewController()
        viewController.bindViewModel(to: viewModel)
        navigation.viewControllers = [viewController]
        navigationController.present(navigation, animated: true)
    }
    
    func pushWebView(title: String, url: String) {
        let navigator = WKWebviewNavigator(navigationController: navigationController)
        let useCase = WKWebviewUseCase()
        let viewModel = WKWebviewViewModel(navigator: navigator,
                                           useCase: useCase,
                                           url: url,
                                           html: nil,
                                           title: title)
        let viewController = WKWebviewViewController()
        viewController.bindViewModel(to: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}
