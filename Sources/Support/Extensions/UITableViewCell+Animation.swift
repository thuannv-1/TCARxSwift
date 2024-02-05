//
//  UITableViewCell+Animation.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 04/02/2024.
//

import UIKit

public extension UITableViewCell {
    func makeBasicAnitaion() {
        alpha = 0
        transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        UIView.animate(withDuration: 0.5) { [unowned self] in
            self.alpha = 1
            self.transform = CGAffineTransform.identity
        }
    }
    
    func makeEaseInOutAnimation(forRowAt indexPath: IndexPath) {
        alpha = 0
        transform = CGAffineTransform(scaleX: 0.5, y: 0.5)

        UIView.animate(withDuration: 0.5,
                       delay: 0.1 * Double(indexPath.row),
                       options: .curveEaseInOut,
                       animations: { [unowned self] in
            self.alpha = 1
            self.transform = CGAffineTransform.identity
        })
    }
}
