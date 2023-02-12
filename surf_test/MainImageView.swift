//
//  MainImageView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class MainImageView: UIImageView {

    let mainImage = UIImage(named: "image3")
    
    init() {
        super.init(image: mainImage)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
