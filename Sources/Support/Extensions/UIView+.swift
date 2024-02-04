//
//  UIView+.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 18/03/2023.
//

import UIKit

// MARK: - Position
public extension UIView {
    var width: CGFloat {
        return frame.size.width
    }
    
    var height: CGFloat {
        return frame.size.height
    }
    
    var top: CGFloat {
        return frame.origin.y
    }
    
    var bottom: CGFloat {
        return frame.origin.y + frame.size.height
    }
    
    var left: CGFloat {
        return frame.origin.x
    }
    
    var right: CGFloat {
        return frame.origin.x + frame.size.width
    }
}

// MARK: - Rotation
public extension UIView {
    func setTransformRotation(toDegrees angleInDegrees: CGFloat) {
        let angleInRadians = angleInDegrees / 180.0 * CGFloat.pi
        let rotation = self.transform.rotated(by: angleInRadians)
        self.transform = rotation
    }
}

public extension UIView {
    func makeScaleAnimation(completionHandler: @escaping () -> Void ) {
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
}
