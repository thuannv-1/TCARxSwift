//
//  String+.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 18/03/2023.
//

import UIKit

extension String {
    func toMessagePopupAttributed() -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 6
        paragraphStyle.alignment = .center
        
        let messageAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14),
                                 NSAttributedString.Key.foregroundColor: UIColor.secondaryLabel,
                                 NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let messageString = NSAttributedString(
            string: self,
            attributes: messageAttributes)
        return messageString
    }
}
