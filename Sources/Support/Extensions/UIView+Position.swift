//
//  UIView+Position.swift
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
