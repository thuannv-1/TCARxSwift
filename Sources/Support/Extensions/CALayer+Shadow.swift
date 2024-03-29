//
//  CALayer+Shadow.swift
//  smart-scanner
//
//  Created by nguyen.van.thuanc on 24/03/2023.
//

import UIKit

public extension CALayer {
    func applyShadow(color: UIColor = .secondaryLabel,
                     alpha: Float = 0.3,
                     x: CGFloat = 0,
                     y: CGFloat = 2,
                     blur: CGFloat = 9,
                     spread: CGFloat = 0) {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}
