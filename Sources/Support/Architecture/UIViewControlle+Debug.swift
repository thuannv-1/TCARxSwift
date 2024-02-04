//
//  UIViewControlle+Debug.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 18/03/2023.
//

import UIKit

extension UIViewController {
    public func logDeinit() {
        print(String(describing: type(of: self)) + " deinit")
    }
}
