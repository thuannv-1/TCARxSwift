//
//  MockView.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 27/01/2024.
//

import UIKit

final public class MockView: UIView {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            let btn = UIButton()
            btn.setTitle("HEEEEE", for: .normal)
            self.addSubview(btn)
            btn.frame = self.bounds
        }
        
        backgroundColor = .red
    }
}
