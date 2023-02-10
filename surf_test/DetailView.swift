//
//  DetailView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class DetailView: UIView {
    
//    var width : CGFloat
//    var height : CGFloat

   let detailView = UIView()
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        self.layer.cornerRadius = 30
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
