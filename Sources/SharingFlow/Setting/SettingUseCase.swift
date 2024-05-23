//
//  SettingUseCase.swift
//  Example
//
//  Created by Thuan Nguyen on 16/5/24.
//

import UIKit
import RxSwift
import RxCocoa

protocol SettingUseCaseType {
    func prepareDataSource() -> Observable<[SettingViewModel.Section]>
}

struct SettingUseCase { }

extension SettingUseCase: SettingUseCaseType {
    func prepareDataSource() -> Observable<[SettingViewModel.Section]> {
        
        let guideAndFeedbackHeader = "settings.guide.section".localized()
        let guideAndFeedbackCells: [SettingViewModel.Cell] = [
            .init(type: .review, data: .init(icon: UIImage(systemName: "square.and.arrow.up.fill"),
                                             title: "settings.review.title".localized())),
            .init(type: .contact, data: .init(icon: UIImage(systemName: "square.and.arrow.up.fill"),
                                              title: "settings.contact.title".localized())),
            .init(type: .privacy, data: .init(icon: UIImage(systemName: "square.and.arrow.up.fill"),
                                              title: "settings.privacy.titte".localized())),
            .init(type: .term, data: .init(icon: UIImage(systemName: "square.and.arrow.up.fill"),
                                           title: "settings.term.title".localized())),
            .init(type: .share, data: .init(icon: UIImage(systemName: "square.and.arrow.up.fill"),
                                            title: "settings.share.title".localized()))
        ]
        let guideAndFeedbackSection = SettingViewModel.Section(
            type: .guideAndFeedback(header: guideAndFeedbackHeader),
            cells: guideAndFeedbackCells
        )
        
        let moreAppHeader = "settings.more.app.section".localized()
        let moreAppFooter = "v1.0.0"
        let moreAppCells: [SettingViewModel.Cell] = [
            .init(type: .scanner, data: .init(icon: UIImage(systemName: "square.and.arrow.up.fill"),
                                              title: "settings.scanner.title".localized())),
            .init(type: .dailyToDo, data: .init(icon: UIImage(systemName: "square.and.arrow.up.fill"),
                                                title: "settings.daily.to.do.title".localized()))
        ]
        let moreAppSection = SettingViewModel.Section(
            type: .moreApp(header: moreAppHeader,
                           footer: moreAppFooter),
            cells: moreAppCells
        )
        
        let sections: [SettingViewModel.Section] = [
            guideAndFeedbackSection,
            moreAppSection
        ]
        
        return .just(sections)
    }
}
