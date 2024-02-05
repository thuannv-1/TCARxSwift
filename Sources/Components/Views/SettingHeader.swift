//
//  SettingHeader.swift
//  TCARxSwift
//
//  Created by Thuan Nguyen on 05/02/2024.
//

import UIKit
import Then
import SnapKit
import Reusable

public class SettingHeader: UITableViewHeaderFooterView, Reusable {
    private lazy var titleLabel = UILabel().with {
        $0.font = .systemFont(ofSize: 14.0)
        $0.textAlignment = .left
        $0.textColor = .secondaryLabel
    }
    
    public var text: String? {
        didSet {
            titleLabel.text = text?.uppercased()
        }
    }
    
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configView()
    }
    
    private func configView() {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.top.bottom.equalToSuperview().inset(8.0)
            $0.leading.trailing.equalToSuperview().inset(24.0)
        }
    }
}
