//
//  MyCollectionViewCell.swift
//  ApplicationOne
//
//  Created by Askar on 16.01.2023.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static let IDENTIFIER = "MyCollectionViewCell"
    
    private lazy var myLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    private lazy var myImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "Diamond")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .systemBlue
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setText(with text: String){
        myLabel.text = text
    }
    
    func setImage(with image: String){
        myImage.image = UIImage(named: image)
    }
}


extension MyCollectionViewCell {
    func setupViews(){
        contentView.addSubview(myLabel)
        contentView.addSubview(myImage)
    }
    
    func setupConstraints(){
        myLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        myImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
