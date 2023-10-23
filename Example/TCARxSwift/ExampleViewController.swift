//
//  ExampleViewController.swift
//  TCARxSwift
//
//  Created by tk1 on 10/23/2023.
//  Copyright (c) 2023 tk1. All rights reserved.
//

import UIKit
import TCARxSwift

class ExampleViewController: UIViewController {
    
    var testView = CAView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(testView)
        testView.frame = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 300.0)
    }
}

