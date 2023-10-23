//
//  AppDelegate.swift
//  TCARxSwift
//
//  Created by tk1 on 10/23/2023.
//  Copyright (c) 2023 tk1. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        makeRootVC()
        return true
    }
}

extension AppDelegate {
    private func makeRootVC() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.rootViewController = ExampleViewController()
        window.makeKeyAndVisible()
    }
}
