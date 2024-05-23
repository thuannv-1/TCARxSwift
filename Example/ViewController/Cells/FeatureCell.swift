//
//  FeatureCell.swift
//  Example
//
//  Created by Thuan Nguyen on 23/5/24.
//

import UIKit
import Reusable
import TCARxSwift

final class FeatureCell: UITableViewCell, Reusable {
    
    // MARK: - UI Components
    private lazy var containerView = UIStackView().with {
        $0.axis = .horizontal
        $0.backgroundColor = .clear
    }
    
    private lazy var titleLabel = TCALabel().with {
        $0.style = .normalHeader
    }
    
    private lazy var forwardIcon = UIImageView().with {
        $0.image = UIImage(systemName: "chevron.forward")
        $0.tintColor = .lightGray
    }
    
    // MARK: - Life Cycles
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    // MARK: - Life Cycles
    private func setupUI() {
        selectionStyle = .none
        contentView.addSubview(containerView)
        containerView.do {
            $0.snp.makeConstraints { make in
                make.top.bottom.equalToSuperview().inset(8.0)
                make.leading.trailing.equalToSuperview().inset(20.0)
            }
            $0.addArrangedSubviews(
                titleLabel,
                UIView(),
                forwardIcon
            )
        }
    }
    
    func configCell(model: FeatureCellModel) {
        titleLabel.text = model.title
    }
}
