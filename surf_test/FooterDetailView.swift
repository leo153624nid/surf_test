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
        label.textColor = Constants.darkGreyColor
        
        return label
    }()
    
    let button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = Constants.blackColor
        button.layer.cornerRadius = 30
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        button.setTitle("Отправить заявку", for: .normal)
        button.setTitleColor(Constants.whiteColor, for: .normal)
        button.setTitle("Обработка...", for: .highlighted)
        button.setTitleColor(Constants.yellowColor, for: .highlighted)
        button.addTarget(self, action: #selector(buttonIsPressed), for: .touchDown)
        button.addTarget(self, action: #selector(buttonIsTapped), for: .touchUpInside)
        
        return button
    }()
    
    @objc func buttonIsPressed(sender: UIButton) {
        print("button is pressed")
    }
    
    @objc func buttonIsTapped(sender: UIButton) {
        print("button is tapped")
        NotificationCenter.default.post(Notification.init(name: .notificationFromFooterDetailView))
    }

    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = Constants.whiteColor
        
        self.addSubview(desc)
        self.addSubview(button)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        // setup button
        button.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        button.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.66).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // setup description
        desc.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        desc.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        desc.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.33).isActive = true
        desc.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
}
