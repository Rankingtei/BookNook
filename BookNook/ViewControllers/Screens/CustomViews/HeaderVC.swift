//
//  HeaderVCViewController.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/12/22.
//

import UIKit

class HeaderVC: UIViewController {
    
    let headerText1 = UILabel()
    let headerText2 = UILabel()
    let headerText3 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

    }
    
    
    func configureView(){
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.clipsToBounds = true
        backgroundImage.image = UIImage(named: "background-image")
        backgroundImage.contentMode = .scaleToFill
                
        view.addSubview(backgroundImage)
        view.addSubview(headerText1)
        view.addSubview(headerText2)
        view.addSubview(headerText3)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        headerText1.text = "We found the best"
        headerText1.textColor = .white
//        headerText1.textAlignment = .left
        headerText1.font = .systemFont(ofSize: 14, weight: .regular)
        
        headerText2.text = "Books For You"
        headerText2.textColor = .white
//        headerText2.textAlignment = .left
        headerText2.font = .systemFont(ofSize: 20, weight: .bold)
        
        headerText3.text = "Over 10,000 books on \nour service"
        headerText3.textColor = .white
//        headerText3.textAlignment = .left
        headerText3.font = .systemFont(ofSize: 14, weight: .regular)
        headerText3.lineBreakMode = .byWordWrapping
        headerText3.numberOfLines = 0
        
        headerText1.translatesAutoresizingMaskIntoConstraints = false
        headerText2.translatesAutoresizingMaskIntoConstraints = false
        headerText3.translatesAutoresizingMaskIntoConstraints = false
      
        
        NSLayoutConstraint.activate([
        
            headerText1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            headerText1.heightAnchor.constraint(equalToConstant: 10),
            headerText1.bottomAnchor.constraint(equalTo: headerText2.topAnchor, constant: -20),
            
            headerText2.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            headerText2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            headerText2.heightAnchor.constraint(equalToConstant: 14),
            
            headerText3.topAnchor.constraint(equalTo: headerText2.bottomAnchor, constant: 8),
            headerText3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            headerText3.heightAnchor.constraint(equalToConstant: 60),
            
        ])
        
        
           
        
        }
}
