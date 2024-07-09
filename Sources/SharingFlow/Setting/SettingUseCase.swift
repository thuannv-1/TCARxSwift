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
        
        let guideAndFeedbackHeader = L10n.Settings.Guide.section
        let guideAndFeedbackCells: [SettingViewModel.Cell] = [
            .init(type: .review, data: .init(icon: Asset.icStar.image,
                                             title: L10n.Settings.Review.title)),
            .init(type: .contact, data: .init(icon: Asset.icMail.image,
                                              title: L10n.Settings.Contact.title)),
            .init(type: .privacy, data: .init(icon: Asset.icPrivacy.image,
                                              title: L10n.Settings.Privacy.titte)),
            .init(type: .term, data: .init(icon: Asset.icTerm.image,
                                           title: L10n.Settings.Term.title)),
            .init(type: .share, data: .init(icon: Asset.icShare.image,
                                            title: L10n.Settings.Share.title))
        ]
        let guideAndFeedbackSection = SettingViewModel.Section(
            type: .guideAndFeedback(header: guideAndFeedbackHeader),
            cells: guideAndFeedbackCells
        )
        
        let moreAppHeader = L10n.Settings.More.App.section
        let moreAppFooter = "v1.0.0"
        let moreAppCells: [SettingViewModel.Cell] = [
            .init(type: .scanner, data: .init(icon: Asset.icScannerApp32.image,
                                              title: L10n.Settings.Scanner.title)),
            .init(type: .dailyToDo, data: .init(icon: Asset.icDailyNote32.image,
                                                title: L10n.Settings.Daily.To.Do.title))
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
