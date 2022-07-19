//
//  CategoriesView.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/13/22.
//

import UIKit

class CategoriesView: UIView {

    let categoriesLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setupView(){
        addSubview(categoriesLabel)
        
        categoriesLabel.font = .systemFont(ofSize: 14)
        categoriesLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            categoriesLabel.topAnchor.constraint(equalTo: self.topAnchor),
            categoriesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor)
            
        ])
        
    }
}
