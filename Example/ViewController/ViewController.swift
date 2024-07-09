//
//  ViewController.swift
//  Example
//
//  Created by Thuan Nguyen on 27/01/2024.
//

import UIKit
import TCARxSwift
import SnapKit

struct FeatureCellModel {
    var icon: UIImage?
    var title: String
}

struct TCARxSwiftFeature {
    var data: FeatureCellModel
    var action: () -> Void
}

final class ViewController: UIViewController {
    
    private lazy var tableView = UITableView().with {
        $0.register(cellType: FeatureCell.self)
        $0.delegate = self
        $0.dataSource  = self
        $0.separatorStyle = .none
    }
    
    private var dataSource = [TCARxSwiftFeature]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        dataSource = generateFeatures()
    }
    
    private func configView() {
        title = "TCARxSwift"
        navigationItem.largeTitleDisplayMode = .automatic
        
        view.do {
            $0.backgroundColor = .systemBackground
            $0.addSubview(tableView)
        }
        
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, 
                   numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(for: indexPath, cellType: FeatureCell.self)
            .with {
                $0.configCell(model: dataSource[indexPath.row].data)
            }
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? FeatureCell else {
            return
        }
        cell.makeScaleAnimation { [weak self] in
            self?.dataSource[indexPath.row].action()
        }
    }
    
    func tableView(_ tableView: UITableView,
                   willDisplay cell: UITableViewCell,
                   forRowAt indexPath: IndexPath) {
        cell.makeEaseInOutAnimation(forRowAt: indexPath)
    }
}
