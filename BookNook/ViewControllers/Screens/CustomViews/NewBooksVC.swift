//
//  NewsFeed.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/13/22.
//

import UIKit

class NewBooksVC: UIViewController {
    
    let newBooksLabel = UILabel()
    
    var book1: NewBooksView = {
        let book = NewBooksView()
        book.bookImage.image = UIImage(named: "ngaf-book")
        book.bookTitle.text = "The Subtle Art of Not Giving a Fuck"
        book.bookAuthor.text = "Mark Manson"
        book.BookRatingScore.text = "3.5"
        return book
    }()
    
    var book2: NewBooksView = {
        let book = NewBooksView()
        book.bookImage.image = UIImage(named: "book6")
        book.bookTitle.text = "Some Books "
        book.bookAuthor.text = "Some Author"
        book.BookRatingScore.text = "2.7"
        return book
    }()
    
    var book3: NewBooksView = {
        let book = NewBooksView()
        book.bookImage.image = UIImage(named: "the-two-towers")
        book.bookTitle.text = "The Winds of Winter"
        book.bookAuthor.text = "George R.R. Martin"
        book.BookRatingScore.text = "4.8"
        return book
    }()
    
    
     lazy var containerStackView: UIStackView = {
         let stackView = UIStackView(arrangedSubviews: [book1, book2, book3])
         stackView.axis = .vertical
         stackView.distribution = .fillEqually
         stackView.spacing = 60
         stackView.alignment = .fill
         stackView.translatesAutoresizingMaskIntoConstraints = false
         return stackView
     }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNewsLabel()
        configureContainerView()
    }
    
    func configureNewsLabel(){
        view.addSubview(newBooksLabel)
        
        newBooksLabel.text = "New"
        newBooksLabel.font = .systemFont(ofSize: 20, weight: .bold)
        
        newBooksLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            newBooksLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            newBooksLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        
    }
    
    func configureContainerView(){
        view.addSubview(containerStackView)
              
        NSLayoutConstraint.activate([
            
            containerStackView.topAnchor.constraint(equalTo: newBooksLabel.bottomAnchor, constant: 8),
            containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
          ])
    }

    
    

}
