//
//  BookDetailsHeaderVC.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/15/22.
//

import UIKit

class BookDetailsHeaderVC: UIViewController {
    
    let bookCover = UIImageView()
    let bookTitle = UILabel()
    let starRating = StarRatingView()
    let numberRating = UILabel()
    let bookAuthor = UILabel()
    
    let bookGenre1 = BookGenreView(backgroundColor: UIColor.gray.cgColor, title: "Fantasy", fontSize: 8)
    let bookGenre2 = BookGenreView(backgroundColor: UIColor.gray.cgColor, title: "Drama", fontSize: 8)
    

    override func viewDidLoad() {
        super.viewDidLoad()

        configureBookCover()
        configureBookTitle()
        configureStarRating()
        configureNumberRating()
        configureBookAuthor()
        configureGenre1()
        configureGenre2()
    }
    
    func configureBookCover(){
        view.addSubview(bookCover)
        bookCover.image = UIImage(named: "the-Winds-of-Winter-cover")
        bookCover.layer.cornerRadius = 8
        bookCover.clipsToBounds = true
        
        bookCover.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bookCover.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
            bookCover.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            bookCover.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -250),
            bookCover.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5),
            
        ])
    
}
func configureBookTitle(){
    view.addSubview(bookTitle)
    bookTitle.text = "The Winds of Winter"
    bookTitle.font = .systemFont(ofSize: 18, weight: .bold)
    
    bookTitle.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
        bookTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 18),
        bookTitle.leadingAnchor.constraint(equalTo: bookCover.trailingAnchor, constant: 25),
        bookTitle.heightAnchor.constraint(equalToConstant: 20),

    ])
}

    func configureStarRating(){
        view.addSubview(starRating)

        starRating.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            starRating.topAnchor.constraint(equalTo: bookTitle.bottomAnchor, constant: 8),
            starRating.leadingAnchor.constraint(equalTo: bookCover.trailingAnchor, constant: 25),
            starRating.heightAnchor.constraint(equalToConstant: 20),
            starRating.widthAnchor.constraint(equalToConstant: 55)
         
        ])
        
    }
    func configureNumberRating(){
        view.addSubview(numberRating)
        
        numberRating.text = "5.0"
        numberRating.font = .systemFont(ofSize: 12)
        
        numberRating.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberRating.topAnchor.constraint(equalTo: starRating.topAnchor),
            numberRating.leadingAnchor.constraint(equalTo: starRating.trailingAnchor, constant: 10),
            numberRating.heightAnchor.constraint(equalToConstant: 20),
            
            
        ])
        
    }
    
    
    func configureBookAuthor(){
        view.addSubview(bookAuthor)
        
        bookAuthor.text = "Definitely not D&D"
        bookAuthor.font = .systemFont(ofSize: 14, weight: .regular)
        
        bookAuthor.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bookAuthor.topAnchor.constraint(equalTo: starRating.bottomAnchor, constant: 10),
            bookAuthor.leadingAnchor.constraint(equalTo: starRating.leadingAnchor),
            bookAuthor.heightAnchor.constraint(equalToConstant: 18)
        
        ])
    }

    func configureGenre1(){
        view.addSubview(bookGenre1)
        
        bookGenre1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bookGenre1.topAnchor.constraint(equalTo: bookAuthor.bottomAnchor, constant: 10),
            bookGenre1.leadingAnchor.constraint(equalTo: starRating.leadingAnchor),
            bookGenre1.heightAnchor.constraint(equalToConstant: 25)
        
        ])
    }
    
    func configureGenre2(){
        view.addSubview(bookGenre2)
        
        bookGenre2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bookGenre2.topAnchor.constraint(equalTo: bookAuthor.bottomAnchor, constant: 10),
            bookGenre2.leadingAnchor.constraint(equalTo: bookGenre1.trailingAnchor, constant: 5),
            bookGenre2.heightAnchor.constraint(equalToConstant: 25)
        
        ])
    }
}
