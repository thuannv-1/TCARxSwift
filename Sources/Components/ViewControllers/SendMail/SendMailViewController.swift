//
//  SendMailViewController.swift
//  cleanner-ios
//
//  Created by Nguyen Van Thuan on 04/08/2023.
//

import UIKit
import MessageUI

public class SendMailViewController: MFMailComposeViewController {
    
    public init(recepients: [String]?,
                subject: String = "",
                messageBody: String = "",
                messageBodyIsHTML: Bool = false) {
        super.init(nibName: nil, bundle: nil)
        setToRecipients(recepients)
        setSubject(subject)
        setMessageBody(messageBody, isHTML: messageBodyIsHTML)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        logDeinit()
    }
}
