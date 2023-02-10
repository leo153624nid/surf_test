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
        label.font = UIFont(name: "SFProDisplay-Regular", size: 24)
        label.textColor = #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)
        
        return label
    }()

    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        self.addSubview(title)
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup title
//        title
    }
}
