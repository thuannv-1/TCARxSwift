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
    func toSafari(_ urlString: String)
    func share(urlString: String)
    func openAppStore(urlString: String)
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
        presentWebView(title: L10n.Settings.Privacy.titte,
                       url: Constants.privacyUrl)
    }
    
    func toTerm() {
        presentWebView(title: L10n.Settings.Term.title,
                       url: Constants.termUrl)
    }
}
