//
//  CarouselCollectionViewCell.swift
//  surf_test
//
//  Created by macbook on 12.02.2023.
//

import UIKit

class CarouselCollectionViewCell: UICollectionViewCell {
    
    static let reusedId = "CarouselCollectionViewCell"
    
    var button = CustomButton(title: "1", id: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        
        self.addSubview(button)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup button
        button.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    }
    
}
