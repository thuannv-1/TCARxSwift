//
//  SettingViewModel.swift
//  Example
//
//  Created by Thuan Nguyen on 16/5/24.
//

import RxSwift
import RxCocoa

public protocol SettingDataType {
    var appStoreUrl: String? { get set }
}

struct SettingViewModel {
    let useCase: SettingUseCaseType
    let navigator: SettingNavigatorType
    let data: SettingDataType?
    let isShowDoneButton: Bool
}

extension SettingViewModel {
    enum CellType {
        // Guide And Feedback
        case review
        case contact
        case privacy
        case term
        case share
        
        // More App
        case scanner
        case dailyToDo
    }
    
    struct Cell {
        let type: CellType
        let data: SettingCellVM
    }
    
    enum SectionType {
        case guideAndFeedback(header: String)
        case moreApp(header: String, footer: String)
        
        var headerTitle: String {
            switch self {
            case .guideAndFeedback(let header), .moreApp(let header, _):
                return header
            }
        }
    }
    
    struct Section {
        let type: SectionType
        let cells: [Cell]
    }
}

extension SettingViewModel: ViewModelType {
    struct Input {
        let loadTrigger: Driver<Void>
        let selectTrigger: Driver<IndexPath>
    }
    
    struct Output {
        let dataSource: Driver<[Section]>
        let voidActions: Driver<Void>
    }
    
    func transform(_ input: Input) -> Output {
        
        let dataSource = input.loadTrigger
            .flatMapLatest {
                self.useCase.prepareDataSource()
                    .asDriverOnErrorJustComplete()
            }
        
        let select = input.selectTrigger
            .withLatestFrom(dataSource) { indexPath, dataSource in
                return dataSource[indexPath.section].cells[indexPath.row]
            }
            .do { cell in
                switch cell.type {
                case .review:
                    self.navigator.toReview()
                case .contact:
                    break
                case .privacy:
                    self.navigator.toPrivacy()
                case .term:
                    self.navigator.toTerm()
                case .share:
                    guard let appStoreUrl = data?.appStoreUrl else { return }
                    self.navigator.share(urlString: appStoreUrl)
                case .scanner:
                    self.navigator.openAppStore(urlString: Constants.scannerURL)
                case .dailyToDo:
                    self.navigator.openAppStore(urlString: Constants.dailyToDoUrl)
                }
            }
            .mapToVoid()
        
        
        let voidActions = Driver<Void>.merge(select)
        
        return Output(
            dataSource: dataSource,
            voidActions: voidActions
        )
    }
}
