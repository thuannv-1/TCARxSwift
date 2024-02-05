//
//  SceneDelegate.swift
//  Example
//
//  Created by Thuan Nguyen on 27/01/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        makeExample(window: window)
    }
}

extension SceneDelegate {
    func makeExample(window: UIWindow) {
        let navigationController = UINavigationController()
        let vc = ViewController()
        navigationController.viewControllers = [vc]
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
