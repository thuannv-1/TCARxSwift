//
//  SettingCell.swift
//  cleanner-ios
//
//  Created by Nguyen Van Thuan on 03/08/2023.
//

import UIKit
import Reusable
import Then
import SnapKit

public class SettingCell: UITableViewCell, Reusable {
    
    private lazy var containerView = UIView().with {
        $0.backgroundColor = .secondarySystemBackground
        $0.layer.cornerRadius = 16.0
        $0.layer.cornerCurve = .continuous
    }
    
    private lazy var iconImageView = UIImageView()
    
    private lazy var titleLabel = UILabel().with {
        $0.font = .boldSystemFont(ofSize: 17)
        $0.textColor = .label
        $0.textAlignment = .left
    }
    
    private lazy var forwardImageView = UIImageView().with {
        $0.tintColor = .secondaryLabel
        $0.image = UIImage(systemName: "chevron.forward")
    }
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configView()
    }

    private func configView() {
        selectionStyle = .none
        
        contentView.addSubview(containerView)
        containerView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16.0)
            $0.top.bottom.equalToSuperview().inset(8.0)
        }
        
        containerView.do {
            $0.addSubview(iconImageView)
            $0.addSubview(titleLabel)
            $0.addSubview(forwardImageView)
        }
        
        iconImageView.snp.makeConstraints {
            $0.top.bottom.equalToSuperview().inset(8.0)
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().inset(16.0)
            $0.width.height.equalTo(28.0)
        }
        
        forwardImageView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().inset(16.0)
            $0.width.equalTo(12.0)
            $0.height.equalTo(18.0)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.equalTo(iconImageView.snp.trailing).inset(-16.0)
            $0.centerY.equalToSuperview()
            $0.trailing.equalTo(forwardImageView.snp.leading).inset(-16.0)
        }
    }
}

public extension SettingCell {
    func configCell(vm: SettingCellVMType) {
        iconImageView.image = vm.icon
        titleLabel.text = vm.title
    }
}
