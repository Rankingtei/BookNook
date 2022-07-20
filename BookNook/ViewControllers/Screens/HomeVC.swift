//
//  HomeVC.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/12/22.
//

import UIKit


struct BookData {
    var image: UIImage
    var title: String
    
}
 
struct CategoryData {
    var title: String
}

class HomeVC: UIViewController {
    
    let headerView = UIView()
    let categories = UILabel()
    let booksForYou = UILabel()
    let booksForYouCollection = UIView()
    let newBooks = UIView()
    
    var books = [
        BookData(image: UIImage(named: "book1")!, title: "Happy"),
        BookData(image: UIImage(named: "book2")!, title: "You are your only limit"),
        BookData(image: UIImage(named: "book3")!, title: "101 Essays"),
        BookData(image: UIImage(named: "book6")!, title: "Soul RIver"),
        BookData(image: UIImage(named: "book5")!, title: "How Innovation Works"),
    ]
    
    var categoriesCollection = [
        
        CategoryData(title: "All"),
        CategoryData(title: "History"),
        CategoryData(title: "Science"),
        CategoryData(title: "Design"),
        CategoryData(title: "Fiction"),
        CategoryData(title: "Business"),
        
    ]
    
    var categoriesCollectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
       layout.scrollDirection = .horizontal
       let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
       cv.register(CategoriesCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
       cv.translatesAutoresizingMaskIntoConstraints = false
       return cv
   }()
    
    
     var booksForYouCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.register(BFYCollectionViewCell.self, forCellWithReuseIdentifier: "cell2")
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavigationVIew()
        configureHeaderView()
        configureCategoriesView()
        configureBooksForYouLabel()
        configureCollecionView()
        configureNewBooks()

        
        self.add(childVC: HeaderVC(), to: headerView)
        self.add(childVC: CatogoriesVC(), to: categories)
        self.add(childVC: NewBooksVC(), to: newBooks)
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
        
        let listButton  = UIBarButtonItem(image: UIImage(named: "navigation"), style: .plain, target: self, action: #selector(searchButtonTapped))
        navigationItem.leftBarButtonItem = listButton
        listButton.tintColor = .black
        
    }
    
    func configureHeaderView(){
        view.addSubview(headerView)
        headerView.layer.cornerRadius = 10
        headerView.layer.shadowRadius = 10
        headerView.layer.shadowOpacity = 0.5
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 13),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            headerView.heightAnchor.constraint(equalToConstant: 90),
        ])
    }
   
    func configureCategoriesView(){
        
        view.addSubview(categoriesCollectionView)
        categoriesCollectionView.backgroundColor = .systemBackground
        categoriesCollectionView.showsHorizontalScrollIndicator = false

        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self

        NSLayoutConstraint.activate([
            categoriesCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 290 ),
            categoriesCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            categoriesCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            categoriesCollectionView.heightAnchor.constraint(equalToConstant: 40)

        ])
    }

    
    func configureBooksForYouLabel(){
        view.addSubview(booksForYou)
        booksForYou.text = "Books For You"
        booksForYou.font = .systemFont(ofSize: 20, weight: .bold)
        
        booksForYou.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            booksForYou.topAnchor.constraint(equalTo: categoriesCollectionView.bottomAnchor, constant: 20),
            booksForYou.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            booksForYou.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    
    func configureCollecionView(){
        view.addSubview(booksForYouCollectionView)
        booksForYouCollectionView.backgroundColor = .systemBackground
        booksForYouCollectionView.showsHorizontalScrollIndicator = false
        
        booksForYouCollectionView.delegate = self
        booksForYouCollectionView.dataSource = self
        
        NSLayoutConstraint.activate([
            booksForYouCollectionView.topAnchor.constraint(equalTo: booksForYou.bottomAnchor, constant: 10 ),
            booksForYouCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            booksForYouCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            booksForYouCollectionView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
    
   
    func configureNewBooks(){
        view.addSubview(newBooks)
        
        newBooks.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            newBooks.topAnchor.constraint(equalTo: booksForYouCollectionView.bottomAnchor, constant: 10),
            newBooks.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            newBooks.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            newBooks.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5)
        ])
    }
}


extension HomeVC: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == booksForYouCollectionView){
            return CGSize(width: 90, height: 145)
            
        }
        return CGSize(width: 55, height: 45)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == booksForYouCollection){
            return books.count
        }
        return categoriesCollection.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath ) as! CategoriesCollectionViewCell
        cell.data = self.categoriesCollection[indexPath.row]
        
        if (collectionView == booksForYouCollectionView){
            let cell2 = booksForYouCollectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath ) as! BFYCollectionViewCell
            cell2.data = self.books[indexPath.row]
            return cell2
        }
        return cell
    }
}
    
