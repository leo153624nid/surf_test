//
//  DetailView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class DetailView: UIView {

    let headerDetailView = HeaderDetailView()
    let sectionDetailView = SectionDetailView()
    let footerDetailView = FooterDetailView()
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        self.layer.cornerRadius = 30
        
        self.addSubview(headerDetailView)
        self.addSubview(sectionDetailView)
        self.addSubview(footerDetailView)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup HeaderDetailView
        headerDetailView.topAnchor.constraint(equalTo: self.topAnchor, constant: 24).isActive = true
        headerDetailView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        headerDetailView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        headerDetailView.heightAnchor.constraint(equalToConstant: 104).isActive = true
        
        // setup SectionDetailView
        sectionDetailView.bottomAnchor.constraint(equalTo: footerDetailView.topAnchor, constant: -20).isActive = true
        sectionDetailView.topAnchor.constraint(equalTo: headerDetailView.bottomAnchor, constant: 20).isActive = true
        sectionDetailView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        sectionDetailView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        
        // setup FooterDetailView
        footerDetailView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -58).isActive = true
        footerDetailView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        footerDetailView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        footerDetailView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
    }
    
}
