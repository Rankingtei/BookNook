//
//  CatogoriesVC.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/12/22.
//

import UIKit

class CatogoriesVC: UIViewController {
    
    
    var allCategories: CategoriesView = {
        let category = CategoriesView()
        category.categoriesLabel.text  = "All"
        return category
    }()
     
    var category1: CategoriesView = {
        let category = CategoriesView()
        category.categoriesLabel.text  = "History"
        return category
    }()
    
    var category2: CategoriesView = {
        let category = CategoriesView()
        category.categoriesLabel.text  = "Archtitecture"
        return category
    }()
    
    var category3: CategoriesView = {
        let category = CategoriesView()
        category.categoriesLabel.text  = "Science"
        return category
    }()
    
    var category4: CategoriesView = {
        let category = CategoriesView()
        category.categoriesLabel.text  = "Design"
        return category
    }()
    
    
   
    lazy var containerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [allCategories, category1, category2, category3, category4])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.spacing =   6
        stackView.alignment = .leading
        

        
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        
    }

    
    func configureView(){
        view.addSubview(containerStackView)
        containerStackView.translatesAutoresizingMaskIntoConstraints = false
              
        NSLayoutConstraint.activate([
            
            containerStackView.topAnchor.constraint(equalTo: view.topAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
          
        ])
        
    }

}
