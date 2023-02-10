//
//  FooterView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class FooterView: UIView {
    
    let rect : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)
        view.layer.cornerRadius = 2.5
        
        return view
    }()

    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        self.addSubview(rect)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        rect.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -9).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 5).isActive = true
        rect.widthAnchor.constraint(equalToConstant: 134).isActive = true
        rect.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }

}


