//
//  SettingHeader.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 23/5/24.
//

import UIKit
import SnapKit
import Reusable

enum SettingHeaderFooterStyle {
    case header
    case footer
    
    var titleStyle: TCALabelStyle {
        switch self {
        case .header:
            return .normalFooter
        case .footer:
            return .smallFooter
        }
    }
    
    var textAlignment: NSTextAlignment {
        switch self {
        case .header:
            return .left
        case .footer:
            return .center
        }
    }
}

final public class SettingHeaderFooter: UITableViewHeaderFooterView,
                                        Reusable {
    
    // MARK: - UI Components
    private lazy var containerView = UIView().with {
        $0.backgroundColor = .clear
    }
    
    private lazy var titleLabel = TCALabel().with {
        $0.style = .normalFooter
    }
    
    // MARK: - Properties
    var style: SettingHeaderFooterStyle = .header {
        willSet(value) {
            configView(with: value)
        }
    }
    
    // MARK: - Life Cycles
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    // MARK: - Private Methods
    private func setupUI() {
        addSubview(containerView)
        containerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        containerView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16.0)
            $0.top.bottom.equalToSuperview().inset(6.0)
        }
    }
    
    private func configView(with style: SettingHeaderFooterStyle) {
        titleLabel.style = style.titleStyle
        titleLabel.textAlignment = style.textAlignment
    }
}

// MARK: - Public Methods
extension SettingHeaderFooter {
    func configView(title: String?) {
        titleLabel.text = title
    }
}
