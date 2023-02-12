//
//  CarouselCollectionViewCell.swift
//  surf_test
//
//  Created by macbook on 12.02.2023.
//

import UIKit

class CarouselCollectionViewCell: UICollectionViewCell {
    
    static let reusedId = "CarouselCollectionViewCell"
    
    var button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9607843137, alpha: 1)
        button.layer.cornerRadius = 12
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        button.setTitleColor(#colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1), for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), for: .highlighted)
        button.addTarget(self, action: #selector(buttonIsPressed), for: .touchDown)
        button.addTarget(self, action: #selector(buttonIsTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonIsPressed(sender: UIButton) {
        print("button is pressed")
    }

    @objc func buttonIsTapped(sender: UIButton) {
        print("button is tapped")
        // todo
    //        NotificationCenter.default.post(Notification.init(name: .notificationFromFooterDetailView))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
//        self.layer.cornerRadius = 30
        
        self.addSubview(button)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup button
        button.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true

    }
    
}
