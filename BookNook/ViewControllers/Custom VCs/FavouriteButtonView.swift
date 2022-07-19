//
//  FavouriteButtonView.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/14/22.
//

import UIKit

class FavouriteButtonView: UIView {

   let button = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        
        addSubview(button)
        
        self.layer.backgroundColor = UIColor.black.cgColor
        self.layer.cornerRadius = 5
        
        
        button.image = UIImage(named: "favourite-icon")
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            
        
        ])
        
    }
}
