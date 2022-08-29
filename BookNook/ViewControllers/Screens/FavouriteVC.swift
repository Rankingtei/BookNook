//
//  FavouriteVC.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/12/22.
//

import UIKit


struct BookDatafavourite {
    var image: UIImage
    var title: String
    
}

class FavouriteVC: UIViewController {
    
    let headerView = UIView()
    let favouriteAuthorView = UIView()
    let likedBooksLabel = UILabel()
    
    var data = [
        BookDatafavourite(image: UIImage(named: "book1")!, title: "Happy"),
        BookDatafavourite(image: UIImage(named: "book2")!, title: "You are your only limit"),
        BookDatafavourite(image: UIImage(named: "book3")!, title: "101 Essays"),
        BookDatafavourite(image: UIImage(named: "book6")!, title: "Soul RIver"),
        BookDatafavourite(image: UIImage(named: "book5")!, title: "How Innovation Works"),
    ]
    
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
        view.backgroundColor = .systemBackground
        configureNavigationVIew()
        configureHeaderView()
        configureFavouriteAuthorView()
        configureLikedBooksLabel()
        configureCollecionView()
        
    
        self.add(childVC: FavouriteHeaderVC(), to: headerView)
        self.add(childVC: FavouriteAuthorsVC(), to: favouriteAuthorView)

    }
  
    
    func add(childVC: UIViewController, to containerView: UIView){
            addChild(childVC)
            containerView.addSubview(childVC.view)
            childVC.view.frame = containerView.bounds
            childVC.didMove(toParent: self)
        }
    @objc func checkAction(sender : UITapGestureRecognizer) {
        let bookDetailsVC = BookDetailsVC()
        navigationController?.pushViewController(bookDetailsVC, animated: true)
    }

                                              
    @objc func searchButtonTapped (){
        
    }
    
    func configureNavigationVIew(){
        let searchButton  = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchButtonTapped))
        navigationItem.rightBarButtonItem = searchButton
        searchButton.tintColor = .black
    
        let listButton  = UIBarButtonItem(image: UIImage(named: "navigation"), style: .plain, target: self, action: #selector(searchButtonTapped))
        navigationItem.leftBarButtonItem = listButton
        listButton.tintColor = .black

        
    }
    
    
    func configureHeaderView(){
        view.addSubview(headerView)
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        self.headerView.addGestureRecognizer(gesture)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            headerView.heightAnchor.constraint(equalToConstant: 200)
            
        ])
    }
    
    
    func configureFavouriteAuthorView(){
        view.addSubview(favouriteAuthorView)
        
        favouriteAuthorView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            favouriteAuthorView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 15),
            favouriteAuthorView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            favouriteAuthorView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            favouriteAuthorView.heightAnchor.constraint(equalToConstant: 250)
            
        ])
    }
    
    func configureLikedBooksLabel(){
        view.addSubview(likedBooksLabel)
        
        
        likedBooksLabel.text = "Liked Books"
        likedBooksLabel.font = .systemFont(ofSize: 20, weight: .bold)
        
        likedBooksLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            likedBooksLabel.topAnchor.constraint(equalTo: favouriteAuthorView.bottomAnchor, constant: 2),
            likedBooksLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            likedBooksLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            likedBooksLabel.heightAnchor.constraint(equalToConstant: 25),
            
        ])
    }
        
    
    func configureCollecionView(){
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: likedBooksLabel.bottomAnchor, constant: 10 ),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            collectionView.heightAnchor.constraint(equalToConstant: 150)
            
        ])
    }
}


extension FavouriteVC: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 90, height: 145)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath ) as! BFYCollectionViewCell
        cell.backgroundColor = .systemBackground
        cell.data2 = self.data[indexPath.row]
        return cell
}

}
