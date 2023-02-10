//
//  DetailView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class DetailView: UIView {

    
    let headerDetailView = HeaderDetailView()
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        self.layer.cornerRadius = 30
        
        self.addSubview(headerDetailView)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        headerDetailView.topAnchor.constraint(equalTo: self.topAnchor, constant: 24).isActive = true
        headerDetailView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        headerDetailView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
    }
    
}
