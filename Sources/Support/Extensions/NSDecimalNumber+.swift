//
//  NSDecimalNumber+.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 03/04/2023.
//

import SwiftUI

public extension NSDecimalNumber {
    func toCurrency(locale: Locale?) -> String? {
        let formatter = NumberFormatter()
        formatter.locale = locale ?? Locale.current
        formatter.numberStyle = .currency
        if let currencyFormatted = formatter.string(from: self as NSNumber) {
            return currencyFormatted
        }
        return nil
    }
}
