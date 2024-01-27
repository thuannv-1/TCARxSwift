//
//  ViewController.swift
//  Example
//
//  Created by Thuan Nguyen on 27/01/2024.
//

import UIKit
import TCARxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mockView = MockView()
        view.addSubview(mockView)
        mockView.frame = view.bounds
    }
}

