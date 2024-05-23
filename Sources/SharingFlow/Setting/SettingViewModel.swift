//
//  SettingViewModel.swift
//  Example
//
//  Created by Thuan Nguyen on 16/5/24.
//

import RxSwift
import RxCocoa

struct SettingViewModel {
    let useCase: SettingUseCaseType
    let navigator: SettingNavigatorType
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
                    break
                case .scanner:
                    break
                case .dailyToDo:
                    break
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
