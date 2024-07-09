//
//  UIView+Animation.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 05/02/2024.
//

import UIKit

public extension UIView {
    func makeScaleAnimation(completionHandler: @escaping () -> Void) {
        UIView.animate(withDuration: 0.2) { [unowned self] in
            let scaleTransform = CGAffineTransform(scaleX: 0.86, y: 0.86)
            self.transform = scaleTransform
        } completion: { _ in
            UIView.animate(withDuration: 0.2) { [unowned self] in
                self.transform = .identity
            } completion: { _ in
                completionHandler()
            }
        }
    }
    
    func makeScaleAnimation() {
        UIView.animate(withDuration: 0.2) { [unowned self] in
            let scaleTransform = CGAffineTransform(scaleX: 0.86, y: 0.86)
            self.transform = scaleTransform
        } completion: { _ in
            UIView.animate(withDuration: 0.2) { [unowned self] in
                self.transform = .identity
            }
        }
    }
}
