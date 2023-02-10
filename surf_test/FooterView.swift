//
//  FooterView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class FooterView: UIView {

    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
