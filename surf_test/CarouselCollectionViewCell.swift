//
//  CarouselCollectionViewCell.swift
//  surf_test
//
//  Created by macbook on 12.02.2023.
//

import UIKit

class CarouselCollectionViewCell: UICollectionViewCell {
    
    static let reusedId = "CarouselCollectionViewCell"
    
    var button = CustomButton(title: "1")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = Constants.whiteColor
        
        contentView.addSubview(button)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup button
        button.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    }
    
}
