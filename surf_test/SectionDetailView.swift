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
        self.backgroundColor = Constants.whiteColor
        
        self.addSubview(carousel)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup carousel
        carousel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        carousel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        carousel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        carousel.heightAnchor.constraint(equalToConstant: Constants.heightCarouselItem).isActive = true
    }
}
