//
//  NewsFeedView.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/13/22.
//

import UIKit

class NewBooksView: UIView {

    let bookImage = UIImageView()
    let bookTitle = UILabel()
    let bookAuthor = UILabel()
    let bookRating = UIImageView()
    let BookRatingScore = UILabel()
    let moreOptions = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        addSubview(bookImage)
        addSubview(bookTitle)
        addSubview(bookAuthor)
        addSubview(bookRating)
        addSubview(BookRatingScore)
        addSubview(moreOptions)
        
        bookImage.layer.cornerRadius = 8
        bookImage.contentMode = .scaleAspectFit
        bookImage.clipsToBounds = true
        
        bookTitle.font = .systemFont(ofSize: 14, weight: .bold)
        bookTitle.lineBreakMode = .byTruncatingTail
        
        bookAuthor.font = .systemFont(ofSize: 13, weight: .regular)
        bookAuthor.lineBreakMode = .byTruncatingTail
        
        bookRating.image = UIImage(named: "star")
        
        BookRatingScore.font = .systemFont(ofSize: 13, weight: .medium)
        
        moreOptions.image = UIImage(named: "options-icon")
        
        
        bookImage.translatesAutoresizingMaskIntoConstraints = false
        bookTitle.translatesAutoresizingMaskIntoConstraints = false
        bookAuthor.translatesAutoresizingMaskIntoConstraints = false
        bookRating.translatesAutoresizingMaskIntoConstraints = false
        BookRatingScore.translatesAutoresizingMaskIntoConstraints = false
        moreOptions.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bookImage.topAnchor.constraint(equalTo: self.topAnchor),
            bookImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bookImage.widthAnchor.constraint(equalToConstant: 35),
            bookImage.heightAnchor.constraint(equalToConstant: 35),
            
            bookTitle.topAnchor.constraint(equalTo: self.topAnchor),
            bookTitle.leadingAnchor.constraint(equalTo: bookImage.trailingAnchor, constant: 8),
            bookTitle.widthAnchor.constraint(equalToConstant: 200),
            
            
            bookAuthor.topAnchor.constraint(equalTo: bookTitle.bottomAnchor, constant: 2),
            bookAuthor.leadingAnchor.constraint(equalTo: bookImage.trailingAnchor, constant: 8),
            
            bookRating.topAnchor.constraint(equalTo: self.topAnchor, constant: 11),
            bookRating.trailingAnchor.constraint(equalTo: BookRatingScore.leadingAnchor, constant: -12),
            
            BookRatingScore.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            BookRatingScore.trailingAnchor.constraint(equalTo: moreOptions.leadingAnchor, constant: -12),
            
            moreOptions.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            moreOptions.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12)
            
        ])
        
        
    }

}
