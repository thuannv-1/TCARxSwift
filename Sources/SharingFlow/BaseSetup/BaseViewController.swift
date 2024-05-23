//
//  BaseViewController.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 05/02/2024.
//

import UIKit

class BaseViewController: UIViewController {
    // MARK: - Life Cyles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    deinit {
        print(#function, self)
    }
    
    // MARK: - Methods
    private func setupUI() {
        view.backgroundColor = .systemBackground
    }
}
