//
//  DetailView.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class DetailView: UIView {
    
    var width : CGFloat
    var height : CGFloat

//   let detailView = UIView(frame: <#T##CGRect#>)
    
    init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
        super.init(frame: .init(x: 10, y: 10, width: width, height: height))
 
        self.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
