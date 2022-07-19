//
//  StarRatingView.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/14/22.
//

import UIKit

class StarRatingView: UIView {

    let star1 = UIImageView()
    let star2 = UIImageView()
    let star3 = UIImageView()
    let star4 = UIImageView()
    let star5 = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureView(){
        addSubview(star1)
        addSubview(star2)
        addSubview(star3)
        addSubview(star4)
        addSubview(star5)
        
        
        star1.image = UIImage(named: "star")
        star2.image = UIImage(named: "star")
        star3.image = UIImage(named: "star")
        star4.image = UIImage(named: "star")
        star5.image = UIImage(named: "star")
        
        star1.translatesAutoresizingMaskIntoConstraints = false
        star2.translatesAutoresizingMaskIntoConstraints = false
        star3.translatesAutoresizingMaskIntoConstraints = false
        star4.translatesAutoresizingMaskIntoConstraints = false
        star5.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            star1.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            star1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 1),
            
            star2.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            star2.leadingAnchor.constraint(equalTo: star1.trailingAnchor, constant: 1),
            
            star3.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            star3.leadingAnchor.constraint(equalTo: star2.trailingAnchor, constant: 2),
            
            star4.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            star4.trailingAnchor.constraint(equalTo: star5.leadingAnchor, constant: -1),
            
            star5.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            star5.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -1),
            
            
        ])
        
    }
}
