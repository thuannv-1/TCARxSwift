//
//  TCALabelStyle.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 23/5/24.
//

import UIKit

public enum TCALabelStyle {
    
    // Header
    case largeHeader
    case normalHeader
    case smallHeader
    
    // Title
    case largeTitle
    case normalTitle
    case smallTitle
    
    // Description
    
    // Footer
    case normalFooter
    case smallFooter
}

extension TCALabelStyle {
    var font: UIFont {
        switch self {
        case .largeHeader:
            return .systemFont(ofSize: 24.0, weight: .semibold)
        case .normalHeader:
            return .systemFont(ofSize: 20.0, weight: .semibold)
        case .smallHeader:
            return .systemFont(ofSize: 18.0, weight: .semibold)
        case .largeTitle:
            return .systemFont(ofSize: 19.0)
        case .normalTitle:
            return .systemFont(ofSize: 17.0)
        case .smallTitle:
            return .systemFont(ofSize: 15.0)
        case .normalFooter:
            return .systemFont(ofSize: 13.0)
        case .smallFooter:
            return .systemFont(ofSize: 12.0)
        }
    }
}
