//
//  CategoriesCollectionViewCell.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/17/22.
//

import UIKit

let reuseID = "CaterogiesCell"

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    let categoriesLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    var data: CategoryData?{
        didSet{
            guard let data = data else {
                return
            }
            categoriesLabel.text = data.title
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    func configure(){
        contentView.addSubview(categoriesLabel)
        
        categoriesLabel.textAlignment = .left
        
        NSLayoutConstraint.activate([
            categoriesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            categoriesLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            categoriesLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
    }
    
}
