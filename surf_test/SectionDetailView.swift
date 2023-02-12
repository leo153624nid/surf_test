//
//  SectionDetailView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class SectionDetailView: UIView {

    let carousel = CarouselCollectionView()
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        
        self.addSubview(carousel)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup carousel
        carousel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        carousel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        carousel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        carousel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

}
