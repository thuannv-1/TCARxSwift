//
//  Utils.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 18/03/2023.
//

import UIKit

func openSetting() {
    let application = UIApplication.shared
    guard let url = URL(string: UIApplication.openSettingsURLString), application.canOpenURL(url) else {
        return
    }
    application.open(url, options: [:], completionHandler: nil)
}

func after(interval: TimeInterval, completion: (() -> Void)?) {
    DispatchQueue.main.asyncAfter(deadline: .now() + interval) {
        completion?()
    }
}
