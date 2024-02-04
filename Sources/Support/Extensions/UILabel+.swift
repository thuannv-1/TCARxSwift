//
//  UILabel+.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 24/03/2023.
//

import UIKit

public extension UILabel {
    func setLineSpacing(lineSpacing: CGFloat = 0.0,
                        lineHeightMultiple: CGFloat = 0.0,
                        _ alignment: NSTextAlignment = .left) {
        guard let labelText = self.text else { return }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        paragraphStyle.alignment = alignment
        paragraphStyle.lineBreakMode = lineBreakMode
        
        let attributedString: NSMutableAttributedString
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }
        
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle,
                                      value: paragraphStyle,
                                      range: NSMakeRange(0, attributedString.length))
        self.attributedText = attributedString
    }
    
    func setStyleFor(text: String, font: UIFont, color: UIColor) {
        guard let labelText = self.text else { return }
        
        let attributedString: NSMutableAttributedString
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }
        
        let pattern = "\(text)"
        
        guard let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive) else {
            return
        }
        
        let searchedRange = NSRange(location: 0, length: attributedString.length)
        let matches = regex.matches(in: labelText,
                                    options: NSRegularExpression.MatchingOptions(rawValue: 0),
                                    range: searchedRange)
        for match in matches {
            attributedString.addAttributes([.font: font, .foregroundColor: color],
                                           range: match.range)
        }
        self.attributedText = attributedString
    }
}
