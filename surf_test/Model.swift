//
//  Model.swift
//  surf_test
//
//  Created by macbook on 12.02.2023.
//

import Foundation
import UIKit

struct CarouselItem {
    var buttonTitle: String
    
    static func fetchCarouselData() -> [CarouselItem] {
        let one = CarouselItem(buttonTitle: "iOS")
        let two = CarouselItem(buttonTitle: "Android")
        let three = CarouselItem(buttonTitle: "Design")
        let four = CarouselItem(buttonTitle: "Flutter")
        let five = CarouselItem(buttonTitle: "QA")
        let six = CarouselItem(buttonTitle: "PM")
        let seven = CarouselItem(buttonTitle: "JS")
        let eight = CarouselItem(buttonTitle: "React")
        let nine = CarouselItem(buttonTitle: "HTML")
        let ten = CarouselItem(buttonTitle: "CSS")
        return [one, two, three, four, five, six, seven, eight, nine, ten]
    }
}

class CustomButton: UIButton {
    
    init(title: String) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
//        self.backgroundColor = #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)
//        self.layer.cornerRadius = 10
//        self.titleLabel?.font = UIFont(name: "SFProDisplay-Regular", size: 16)
//        self.setTitle(title, for: .normal)
//        self.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
//        self.setTitleColor(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), for: .highlighted)
//        self.addTarget(self, action: #selector(buttonIsPressed), for: .touchDown)
//        self.addTarget(self, action: #selector(buttonIsTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    @objc func buttonIsPressed(sender: UIButton) {
//        print("button is pressed")
//    }
//
//    @objc func buttonIsTapped(sender: UIButton) {
//        print("button is tapped")
//        // todo
//    //        NotificationCenter.default.post(Notification.init(name: .notificationFromFooterDetailView))
//    }

}

struct Constants {
    static let one : CGFloat = 10 // todo
}

