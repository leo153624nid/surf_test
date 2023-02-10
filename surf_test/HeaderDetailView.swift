//
//  HeaderDetailView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class HeaderDetailView: UIView {
    
    let title : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Стажировка в Surf"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 27)
        label.textColor = #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)
        
        return label
    }()
    
    let desc : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "Работай над реальными задачами под руководством опытного наставника и получи возможность стать частью команды мечты. "
        label.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        label.adjustsFontSizeToFitWidth = true
        label.sizeToFit()
        label.textAlignment = .natural
        label.textColor = #colorLiteral(red: 0.5882352941, green: 0.5843137255, blue: 0.6078431373, alpha: 1)
        
        return label
    }()

    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        
        self.addSubview(title)
        self.addSubview(desc)
        
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup title
        title.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        title.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        title.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        // setup description
        desc.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 12).isActive = true
        desc.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        desc.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
//        desc.heightAnchor.constraint(equalToConstant: 32).isActive = true
    }
}
