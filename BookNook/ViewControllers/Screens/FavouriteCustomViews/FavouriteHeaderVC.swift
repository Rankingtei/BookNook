//
//  FavouriteHeaderVC.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/14/22.
//

import UIKit


class FavouriteHeaderVC: UIViewController {
    
    let bookCover = UIImageView()
    let bookTitle = UILabel()
    let topFavouriteBadge = TopAuthorView()
    let starRating = StarRatingView()
    let numberRating = UILabel()
    let bookAuthor = UILabel()
    
    let bookGenre1 = BookGenreView(backgroundColor: UIColor.gray.cgColor, title: "Self-help", fontSize: 8)
    let bookGenre2 = BookGenreView(backgroundColor: UIColor.gray.cgColor, title: "Non-Fiction", fontSize: 8)
    let buyBookButton = BookGenreView(backgroundColor: UIColor.orange.cgColor, title: "Buy $14.99", fontSize: 14)
    
    let favouriteButton = FavouriteButtonView()
    

    let collectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
       layout.scrollDirection = .horizontal
       let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
       cv.register(BFYCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
       cv.translatesAutoresizingMaskIntoConstraints = false
       return cv
   }()
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureBookCover()
        configureBookTitle()
        configureTopFavouriteView()
        configureStarRating()
        configureNumberRating()
        configureBookAuthor()
        configureGenre1()
        configureGenre2()
        configureBuyBookButton()
        configureFavoriteButton()

    }
    
    
    func configureBookCover(){
        view.addSubview(bookCover)
        bookCover.image = UIImage(named: "the-Winds-of-Winter-cover")
        bookCover.layer.cornerRadius = 8
        bookCover.clipsToBounds = true
        
        bookCover.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bookCover.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
            bookCover.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bookCover.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -240),
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
            bookTitle.leadingAnchor.constraint(equalTo: bookCover.trailingAnchor, constant: 15),
            bookTitle.heightAnchor.constraint(equalToConstant: 20),
    
        ])
    }
    
    func configureTopFavouriteView(){
        view.addSubview(topFavouriteBadge)

        topFavouriteBadge.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topFavouriteBadge.topAnchor.constraint(equalTo: bookTitle.topAnchor),
            topFavouriteBadge.leadingAnchor.constraint(equalTo: bookTitle.trailingAnchor, constant: 2),
            topFavouriteBadge.heightAnchor.constraint(equalToConstant: 20),
            topFavouriteBadge.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5)
         
        ])
        
    }
    
    func configureStarRating(){
        view.addSubview(starRating)

        starRating.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            starRating.topAnchor.constraint(equalTo: bookTitle.bottomAnchor, constant: 8),
            starRating.leadingAnchor.constraint(equalTo: bookCover.trailingAnchor, constant: 15),
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
        
        bookAuthor.text = "George R.R. Martin"
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
    func configureBuyBookButton(){
        view.addSubview(buyBookButton)
        
        buyBookButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buyBookButton.topAnchor.constraint(equalTo: bookGenre1.bottomAnchor, constant: 12),
            buyBookButton.leadingAnchor.constraint(equalTo: starRating.leadingAnchor),
            buyBookButton.heightAnchor.constraint(equalToConstant: 35),
            buyBookButton.widthAnchor.constraint(equalToConstant: 100)
        
        ])
        
    }
    
    func configureFavoriteButton(){
        view.addSubview(favouriteButton)
        
        
        
        favouriteButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            favouriteButton.topAnchor.constraint(equalTo: buyBookButton.topAnchor),
            favouriteButton.leadingAnchor.constraint(equalTo: buyBookButton.trailingAnchor, constant: 10),
            favouriteButton.heightAnchor.constraint(equalToConstant: 35),
            favouriteButton.widthAnchor.constraint(equalToConstant: 35)
        ])
        
    }
    
}
