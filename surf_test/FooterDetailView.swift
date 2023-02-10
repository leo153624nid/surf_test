//
//  FooterDetailView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class FooterDetailView: UIView {
    
    let desc : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Хочешь к нам?"
        label.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        label.textColor = #colorLiteral(red: 0.5882352941, green: 0.5843137255, blue: 0.6078431373, alpha: 1)
        
        return label
    }()
    
    let button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.titleLabel = "Хочешь к нам?"
//        button.font = UIFont(name: "SFProDisplay-Regular", size: 16)
//        button.textColor = #colorLiteral(red: 0.5882352941, green: 0.5843137255, blue: 0.6078431373, alpha: 1)
        
        return button
    }()

    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        
        self.addSubview(desc)
        
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup title
//        label.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        label.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
//        label.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
//        label.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        // setup description
        desc.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        desc.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        desc.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        desc.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }

}
