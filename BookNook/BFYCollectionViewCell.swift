//
//  BFYCollectioViewCell.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/12/22.
//

import UIKit

//struct BookData {
//    var bookCover: UIImage
//    var title: String
//
//}

class BFYCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "BookCell"
    
    
    var bookCover: BookCoverImageView = {
        let bookCover = BookCoverImageView(frame: .zero)
        bookCover.image = UIImage(named: "book1")
        bookCover.contentMode = .scaleAspectFit
        bookCover.layer.cornerRadius = 10
        bookCover.clipsToBounds = true
        bookCover.translatesAutoresizingMaskIntoConstraints = false
        return bookCover
    }()
    
    
    var bookTitle: UILabel = {
        let bookTitle = UILabel()
        bookTitle.font  = .systemFont(ofSize: 12)
        bookTitle.adjustsFontSizeToFitWidth = true
        bookTitle.textAlignment = .left
        bookTitle.lineBreakMode = .byWordWrapping
        bookTitle.numberOfLines = 0
        bookTitle.translatesAutoresizingMaskIntoConstraints = false
        return bookTitle
    }()
    
    var data: BookData?{
        didSet{
            guard let data = data else {
                return }
            bookCover.image = data.image
            bookTitle.text = data.title
        }
    }
    
    var data2: BookDatafavourite?{
        didSet{
            guard let data = data2 else {
                return }
            bookCover.image = data.image
            bookTitle.text = data.title
            
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
        contentView.addSubview(bookCover)
        contentView.addSubview(bookTitle)
        
        NSLayoutConstraint.activate([
            bookCover.topAnchor.constraint(equalTo: contentView.topAnchor),
            bookCover.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            bookCover.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            bookCover.heightAnchor.constraint(equalToConstant: 110),
            bookCover.widthAnchor.constraint(equalToConstant: 90),
            
            bookTitle.topAnchor.constraint(equalTo: bookCover.bottomAnchor, constant: 8),
            bookTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            bookTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            bookTitle.heightAnchor.constraint(equalToConstant: 30)
            
        ])
    }
}
