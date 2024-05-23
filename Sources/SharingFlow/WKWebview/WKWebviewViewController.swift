//
//  WKWebviewViewController.swift
//  smart-scanner
//
//  Created by Nguyen Van Thuan on 18/03/2023.
//

import UIKit
import Reusable
import RxSwift
import RxCocoa
import Then
import WebKit
import Localize_Swift

final class WKWebviewViewController: BaseViewController,
                                     BindableType {
    
    var viewModel: WKWebviewViewModel!
    var disposeBag: DisposeBag = DisposeBag()
    
    var webView = WKWebView()
    private var estimatedProgressObserver: NSKeyValueObservation?
    
    lazy var activityIndicator: UIActivityIndicatorView = {
        var activity = UIActivityIndicatorView()
        activity.hidesWhenStopped = true
        activity.center = view.center
        activity.style = .large
        activity.color = .secondaryLabel
        return activity
    }()
    
    let rightButton = UIBarButtonItem(title: "text.done".localized())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        webView.do {
            $0.navigationDelegate = self
            $0.addSubview(activityIndicator)
            $0.allowsLinkPreview = false
        }
        view = webView
        
        setupEstimatedProgressObserver()
        
        navigationItem.rightBarButtonItem = rightButton
    }
    
    private func setupEstimatedProgressObserver() {
        estimatedProgressObserver = webView.observe(\.estimatedProgress, options: [.new]) { [weak self] webView, _ in
            guard let this = self else { return }
            let progress = Float(webView.estimatedProgress)
            if progress > 0.5 {
                this.activityIndicator.stopAnimating()
            }
        }
    }
    
    private func removeEstimatedProgressObserver() {
        estimatedProgressObserver?.invalidate()
        estimatedProgressObserver = nil
    }
    
    func bindViewModel() {
        let input = WKWebviewViewModel.Input(
            loadTrigger: Driver.just(()),
            dismissTrigger: rightButton.rx.tap.asDriver()
        )
        
        let output = viewModel.transform(input)
        
        output.title
            .drive(titleBinder)
            .disposed(by: disposeBag)
        
        output.url
            .drive(urlBinder)
            .disposed(by: disposeBag)
        
        output.html
            .drive(htmlBinder)
            .disposed(by: disposeBag)
        
        output.voidAction
            .drive()
            .disposed(by: disposeBag)
    }
}

// MARK: - Binder
extension WKWebviewViewController {
    var titleBinder: Binder<String?> {
        Binder(self) { vc, title in
            vc.title = title
        }
    }
    
    var urlBinder: Binder<String?> {
        Binder(self) { vc, url in
            guard let urlString = url,
                  let url = URL(string: urlString) else {
                return
            }
            let request = URLRequest(url: url)
            vc.webView.load(request)
            vc.activityIndicator.startAnimating()
        }
    }
    
    var htmlBinder: Binder<String?> {
        Binder(self) { vc, html in
            guard let htmlContent = html else { return }
            vc.webView.loadHTMLString(htmlContent, baseURL: nil)
        }
    }
}

// MARK: - WKNavigationDelegate
extension WKWebviewViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
        removeEstimatedProgressObserver()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()
    }
}
