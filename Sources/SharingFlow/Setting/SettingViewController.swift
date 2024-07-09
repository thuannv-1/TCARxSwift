//
//  SettingViewController.swift
//  Example
//
//  Created by Thuan Nguyen on 16/5/24.
//

import UIKit
import RxSwift
import RxCocoa

final class SettingViewController: BaseViewController,
                                   BindableType {
    // MARK: - UI Components
    private lazy var tableView = UITableView(
        frame: .zero,
        style: .grouped
    ).with {
        $0.dataSource = self
        $0.delegate = self
        $0.separatorStyle = .none
        $0.register(cellType: SettingCell.self)
        $0.register(headerFooterViewType: SettingHeaderFooter.self)
    }
    
    // MARK: - Properties
    var viewModel: SettingViewModel!
    var disposeBag = DisposeBag()
    
    private var dataSource = [SettingViewModel.Section]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    // MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Private Methods
    private func setupUI() {
        title = "Settings"
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func animationTappedCell(_ indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? SettingCell else {
            return
        }
        cell.makeScaleAnimation()
    }
}

// MARK: - bindViewModel
extension SettingViewController {
    func bindViewModel() {
        let selectTrigger = tableView.rx.itemSelected
            .do(onNext: animationTappedCell)
            .asDriverOnErrorJustComplete()
        
        let input = SettingViewModel.Input(
            loadTrigger: .just(()),
            selectTrigger: selectTrigger
        )
        let output = viewModel.transform(input)
        
        output.dataSource
            .drive(dataSourceBinder)
            .disposed(by: disposeBag)
        
        output.voidActions
            .drive()
            .disposed(by: disposeBag)
    }
}

// MARK: - Binders
extension SettingViewController {
    private var dataSourceBinder: Binder<[SettingViewModel.Section]> {
        Binder(self) { vc, sections in
            vc.dataSource = sections
        }
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension SettingViewController: UITableViewDataSource,
                                 UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].cells.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = dataSource[indexPath.section].cells[indexPath.row].data
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: SettingCell.self).with {
            $0.configCell(vm: model)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, 
                   viewForHeaderInSection section: Int) -> UIView? {
        let sectionType = dataSource[section].type
        let header = tableView.dequeueReusableHeaderFooterView(SettingHeaderFooter.self)?.with {
            $0.style = .header
            $0.configView(title: sectionType.headerTitle)
        }
        return header
    }
    
    func tableView(_ tableView: UITableView,
                   viewForFooterInSection section: Int) -> UIView? {
        let sectionType = dataSource[section].type
        switch sectionType {
        case .moreApp(_, let footer):
            return tableView.dequeueReusableHeaderFooterView(SettingHeaderFooter.self)?.with {
                $0.style = .footer
                $0.configView(title: footer)
            }
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView,
                   willDisplay cell: UITableViewCell,
                   forRowAt indexPath: IndexPath) {
        cell.makeEaseInOutAnimation(forRowAt: indexPath)
    }
}
