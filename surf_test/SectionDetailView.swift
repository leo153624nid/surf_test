//
//  SectionDetailView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class SectionDetailView: UIView {

//    let headerDetailView = HeaderDetailView()
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        
//        self.addSubview(headerDetailView)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup HeaderDetailView
//        headerDetailView.topAnchor.constraint(equalTo: self.topAnchor, constant: 24).isActive = true
//        headerDetailView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
//        headerDetailView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        
      
        
    }

}
