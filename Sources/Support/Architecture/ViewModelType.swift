//
//  ViewModelType.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 18/03/2023.
//

import RxSwift
import RxCocoa

public protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output
}
