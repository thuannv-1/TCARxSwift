//
//  WKWebviewViewModel.swift
//  cleanner-ios
//
//  Created by Nguyen Van Thuan on 04/08/2023.
//

import RxSwift
import RxCocoa

struct WKWebviewViewModel {
    let navigator: WKWebviewNavigatorType
    let useCase: WKWebviewUseCaseType
    let url: String
    let html: String?
    let title: String
}

extension WKWebviewViewModel: ViewModelType {
    struct Input {
        let loadTrigger: Driver<Void>
        let dismissTrigger: Driver<Void>
    }
    
    struct Output {
        let title: Driver<String>
        let url: Driver<String>
        let html: Driver<String?>
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        let title = input.loadTrigger
            .map { self.title }
        
        let url = input.loadTrigger
            .map { self.url }
        
        let html = input.loadTrigger
            .map { self.html }
        
        input.dismissTrigger
            .drive { _ in
                self.navigator.dimiss()
            }
            .disposed(by: disposeBag)
        
        return Output(
            title: title,
            url: url,
            html: html
        )
    }
}
