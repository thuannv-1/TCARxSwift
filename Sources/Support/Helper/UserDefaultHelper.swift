//
//  UserDefaultHelper.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 22/03/2023.
//

import Foundation

final class UserDefaultsHelper: NSObject {
    @Storage(key: "purchased", defaultValue: nil)
    static var purchased: String?
    
    @Storage(key: "freeDate", defaultValue: Date())
    static var freeDate: Date
    
    @Storage(key: "scanCount", defaultValue: 0)
    static var scanCount: Int
}
