//
//  SectionHeaderView.swift
//  ApplicationOne
//
//  Created by Askar on 16.01.2023.
//

import UIKit

final class SectionHeaderView: UIView {
    
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .label
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setText(on text: String) {
        mainLabel.text = text
    }
}

//MARK: - Setup views and constraints methods

private extension SectionHeaderView {
    
    func setupViews() {
        addSubview(mainLabel)
    }
    
    func setupConstraints() {
        mainLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
