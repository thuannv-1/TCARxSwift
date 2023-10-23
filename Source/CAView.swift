//
//  CAView.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 23/10/2023.
//

import UIKit

public class CAView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configView()
    }
    
    private func configView() {
        backgroundColor = .red
    }
}
