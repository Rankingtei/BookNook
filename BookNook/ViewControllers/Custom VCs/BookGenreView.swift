//
//  BookGenreView.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/14/22.
//

import UIKit

class BookGenreView: UIView {
    
    let genreLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: CGColor, title: String, fontSize: CGFloat){
        self.init(frame: .zero)
        genreLabel.text = title
        genreLabel.font = .systemFont(ofSize: fontSize)
        self.layer.backgroundColor = backgroundColor
        
    }
    

    func configureView(){
        addSubview(genreLabel)
        
        genreLabel.font = .systemFont(ofSize: 8)
        genreLabel.textColor = .white
        genreLabel.textAlignment = .center
        
        
//        self.layer.backgroundColor = UIColor.gray.cgColor
        self.layer.cornerRadius = 6
        
        genreLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            genreLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            genreLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            genreLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8)
        ])
        
        
    }
   
    
}
