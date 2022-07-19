//
//  BookDetails.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/15/22.
//

import UIKit

class BookDetailsVC: UIViewController {
    
    let headerView = UIView()
    let bookDescriptionLabel = UIView()
    let bookDesciption = BookDescriptionView()
    let buyBookButton = BookGenreView(backgroundColor: UIColor.orange.cgColor, title: "Buy $14.99", fontSize: 18)
    let favouriteButton = FavouriteButtonView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavigationVIew()
        configureHeaderView()
        configureBookDesciptionView()
        configureBuyButton()
        configureFavouriteButton()
        
        self.add(childVC: BookDetailsHeaderVC(), to: headerView)
        
    }
    
    
    func add(childVC: UIViewController, to containerView: UIView){
            addChild(childVC)
            containerView.addSubview(childVC.view)
            childVC.view.frame = containerView.bounds
            childVC.didMove(toParent: self)
        }

    @objc func searchButtonTapped (){
        
    }
    
    
    func configureNavigationVIew(){
        let searchButton  = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchButtonTapped))
        navigationItem.rightBarButtonItem = searchButton
        searchButton.tintColor = .black
        
        let backButton = UINavigationBar()
        backButton.backIndicatorImage = UIImage(systemName: "arrow.backward")
        backButton.tintColor = .black
        
    }
    
    
    func configureHeaderView(){
        view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
    func configureBookDesciptionView(){
        view.addSubview(bookDesciption)
        
        bookDesciption.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bookDesciption.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            bookDesciption.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            bookDesciption.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            bookDesciption.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -165)
        ])
        
    }
    
    
    func configureBuyButton(){
        view.addSubview(buyBookButton)
        
        buyBookButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buyBookButton.topAnchor.constraint(equalTo: bookDesciption.bottomAnchor, constant: 5),
            buyBookButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90),
            buyBookButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -25),
            buyBookButton.widthAnchor.constraint(equalToConstant: 160)
        ])
    }
    
    
    func configureFavouriteButton(){
        view.addSubview(favouriteButton)
        
        favouriteButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            favouriteButton.leadingAnchor.constraint(equalTo: buyBookButton.trailingAnchor, constant: 25),
            favouriteButton.bottomAnchor.constraint(equalTo: buyBookButton.bottomAnchor),
            favouriteButton.heightAnchor.constraint(equalToConstant: 50),
            favouriteButton.widthAnchor.constraint(equalToConstant: 50),
        ])
    }

}
