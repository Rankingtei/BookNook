//
//  FavouriteAuthorsView.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/14/22.
//

import UIKit

class FavouriteAuthorsView: UIView {

    let authorAvatar = UIImageView()
    let authorLabel = UILabel()
    let numberOfBooksLabel = UILabel()
    let numberOfBooks = Int()
    let moreOptions = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(authorAvatarImage: UIImage, avatarLabel: String, numberOfBooks: Int){
        self.init(frame: .zero)
        authorAvatar.image = authorAvatarImage
        authorLabel.text = avatarLabel
        numberOfBooksLabel.text = "\(numberOfBooks) Books"
        
    }
    
    
    func configureView(){
        addSubview(authorAvatar)
        addSubview(authorLabel)
        addSubview(numberOfBooksLabel)
        addSubview(moreOptions)
        
        authorAvatar.layer.cornerRadius = 8
        authorAvatar.clipsToBounds = true
        
        authorLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        numberOfBooksLabel.font = .systemFont(ofSize: 14, weight: .regular)
        
        moreOptions.image = UIImage(named: "options-icon")
        
        
        authorAvatar.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfBooksLabel.translatesAutoresizingMaskIntoConstraints = false
        moreOptions.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authorAvatar.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            authorAvatar.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            authorAvatar.heightAnchor.constraint(equalToConstant: 40),
            authorAvatar.widthAnchor.constraint(equalToConstant: 40),
            
            authorLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            authorLabel.leadingAnchor.constraint(equalTo: authorAvatar.trailingAnchor, constant: 10),
//            authorLabel.trailingAnchor.constraint(equalTo: numberOfBooksLabel.leadingAnchor),
            authorLabel.heightAnchor.constraint(equalToConstant: 25),
            authorLabel.widthAnchor.constraint(equalToConstant: 180),
            
            numberOfBooksLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            numberOfBooksLabel.trailingAnchor.constraint(equalTo: moreOptions.leadingAnchor, constant: -40),
            
            moreOptions.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            moreOptions.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            
        ])
        
        
    }
}
