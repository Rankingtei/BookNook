//
//  FavouriteAuthorsVC.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/14/22.
//

import UIKit

class FavouriteAuthorsVC: UIViewController {
     
    let favouriteAuthorsLabel = UILabel()
    let favouriteAuthor1 = FavouriteAuthorsView(authorAvatarImage: UIImage(named: "author-image")!, avatarLabel: "Steven King", numberOfBooks: 20)
    let favouriteAuthor2 = FavouriteAuthorsView(authorAvatarImage: UIImage(named: "akwasi")!, avatarLabel: "Dan Brown ", numberOfBooks: 21)
    let favouriteAuthor3 = FavouriteAuthorsView(authorAvatarImage: UIImage(named: "waheed")!, avatarLabel: "George RR Martin", numberOfBooks: 12)
    
    
    let seperatorView = UIView()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureFavAuthorLabel()
        configureAuthor1()
        configureAuthor2()
        configureAuthor3()
    }
    
    
    func configureFavAuthorLabel(){
        view.addSubview(favouriteAuthorsLabel)
        
        
        favouriteAuthorsLabel.text = "Favourite Authors"
        favouriteAuthorsLabel.font = .systemFont(ofSize: 20, weight: .bold)
        
        favouriteAuthorsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            favouriteAuthorsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
            favouriteAuthorsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            favouriteAuthorsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            favouriteAuthorsLabel.heightAnchor.constraint(equalToConstant: 25),
            
        ])
    }
    
    func configureAuthor1(){
        view.addSubview(favouriteAuthor1)
        
        favouriteAuthor1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            favouriteAuthor1.topAnchor.constraint(equalTo: favouriteAuthorsLabel.bottomAnchor, constant: 10),
            favouriteAuthor1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            favouriteAuthor1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
//            favouriteAuthor1.bottomAnchor.constraint(equalTo: favouriteAuthor2.topAnchor)
            favouriteAuthor1.heightAnchor.constraint(equalToConstant: 60)
            
        ])
    }

    func configureAuthor2(){
        view.addSubview(favouriteAuthor2)
        
        favouriteAuthor2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            favouriteAuthor2.topAnchor.constraint(equalTo: favouriteAuthor1.bottomAnchor),
            favouriteAuthor2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            favouriteAuthor2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            favouriteAuthor2.heightAnchor.constraint(equalToConstant: 60)
            
        ])
    }
    
    
    func configureAuthor3(){
        view.addSubview(favouriteAuthor3)
        
        favouriteAuthor3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            favouriteAuthor3.topAnchor.constraint(equalTo: favouriteAuthor2.bottomAnchor),
            favouriteAuthor3.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            favouriteAuthor3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            favouriteAuthor3.heightAnchor.constraint(equalToConstant: 60)
            
            
        ])
    }

}
