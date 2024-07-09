//
//  UIStackView+Ext.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 23/5/24.
//

import UIKit

public extension UIStackView {

    func addArrangedSubviews<S: Sequence>(_ subviews: S) where S.Iterator.Element: UIView {
        subviews.forEach(self.addArrangedSubview(_:))
    }
    
    func addArrangedSubviews(_ subviews: UIView...) {
        self.addArrangedSubviews(subviews)
    }
    
}
