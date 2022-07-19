//
//  TopAuthorView.swift
//  BookNook
//
//  Created by Tei Akpotosu-Nartey on 7/14/22.
//

import UIKit

class TopAuthorView: UIView {

    let topAuthorLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   func configureView(){
       addSubview(topAuthorLabel)
       
       self.layer.borderWidth = 1
       self.layer.borderColor = UIColor.orange.cgColor
       self.layer.cornerRadius = 5
       
       
       topAuthorLabel.text = "Top Favourite"
       topAuthorLabel.textColor = .orange
//       topAuthorLabel.font = .systemFont(ofSize: 4)
       topAuthorLabel.adjustsFontSizeToFitWidth = true
       
       
       topAuthorLabel.translatesAutoresizingMaskIntoConstraints = false
       
       NSLayoutConstraint.activate([
            topAuthorLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
           topAuthorLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4),
           topAuthorLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -4)
           
       ])
        
    }

}
