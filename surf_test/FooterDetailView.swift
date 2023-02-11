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
        button.backgroundColor = #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)
        button.layer.cornerRadius = 30
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        button.setTitle("Отправить заявку", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.setTitle("Обработка...", for: .highlighted)
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
        NotificationCenter.default.post(Notification.init(name: .notificationFromFooterDetailView))
    }

    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        
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
