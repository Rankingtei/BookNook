//
//  BookDescriptionView.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/15/22.
//

import UIKit

class BookDescriptionView: UIView {

    let bookDescriptionLabel = UILabel()
    let bookDesciptionDetails = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
        addSubview(bookDescriptionLabel)
        addSubview(bookDesciptionDetails)
        
        
        bookDescriptionLabel.text = "Book Description"
        bookDescriptionLabel.font = .systemFont(ofSize: 20, weight: .bold)
        
        bookDesciptionDetails.font = .systemFont(ofSize: 16, weight: .light)
        bookDesciptionDetails.lineBreakMode = .byClipping
        bookDescriptionLabel.textAlignment = .left
        bookDesciptionDetails.numberOfLines = 0
        bookDesciptionDetails.text = BookInformation.bookInfo
        
        
        bookDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        bookDesciptionDetails.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bookDescriptionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            bookDescriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bookDescriptionLabel.heightAnchor.constraint(equalToConstant: 20),
            
            bookDesciptionDetails.topAnchor.constraint(equalTo: bookDescriptionLabel.bottomAnchor),
            bookDesciptionDetails.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bookDesciptionDetails.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bookDesciptionDetails.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
            
            
            
        ])
        
    }
}
