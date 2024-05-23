//
//  BindableType.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 18/03/2023.
//

import UIKit
import RxSwift
import RxCocoa

public protocol BindableType: AnyObject {
    associatedtype ViewModelType
    
    var disposeBag: DisposeBag { get set }
    
    var viewModel: ViewModelType! { get set }
    
    func bindViewModel()
}

public extension BindableType where Self: UIViewController {
    func bindViewModel(to model: Self.ViewModelType) {
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
}
