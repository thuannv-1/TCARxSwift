//
//  TestAAA.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 05/11/2023.
//

import UIKit
import RxSwift

public class TestAAA: UIViewController {
    
    let dj = PublishSubject<Void>()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
}
