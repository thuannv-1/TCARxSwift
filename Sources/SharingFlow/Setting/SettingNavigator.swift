//
//  SettingNavigator.swift
//  Example
//
//  Created by Thuan Nguyen on 16/5/24.
//

import UIKit
import RxSwift
import RxCocoa
import StoreKit

protocol SettingNavigatorType {
    func toReview()
    func toPrivacy()
    func toTerm() 
}

struct SettingNavigator: NavigatorType,
                         ShowWebViewNavigatorType {
    var navigationController: UINavigationController
}

extension SettingNavigator: SettingNavigatorType {
    func toReview() {
        guard let window = UIApplication.shared.windows.first,
              let windowScene = window.windowScene  else {
            return
        }
        SKStoreReviewController.requestReview(in: windowScene)
    }
    
    func toPrivacy() {
        presentWebView(title: "settings.privacy.titte".localized(),
                       url: TCARxSwiftConstants.privacyUrl)
    }
    
    func toTerm() {
        presentWebView(title: "settings.term.title".localized(),
                       url: TCARxSwiftConstants.termUrl)
    }
}
