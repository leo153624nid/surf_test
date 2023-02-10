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
        self.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
