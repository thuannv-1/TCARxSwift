//
//  TCALabel.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 23/5/24.
//

import UIKit

final public class TCALabel: UILabel {
    
    // MARK: - Public Properties
    public var style: TCALabelStyle {
        willSet(value) {
            setupUI(with: value)
        }
    }
    
    // MARK: - Life Cycles
    public init(style: TCALabelStyle) {
        self.style = style
        super.init(frame: .zero)
    }
    
    override init(frame: CGRect) {
        self.style = .normalTitle
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        self.style = .normalTitle
        super.init(coder: coder)
    }
    
    // MARK: - Methods
    private func setupUI(with style: TCALabelStyle) {
        font = style.font
    }
}
