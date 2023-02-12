//
//  Model.swift
//  surf_test
//
//  Created by macbook on 12.02.2023.
//

import Foundation
import UIKit

struct CarouselItem {
    var button: CustomButton
    
    static func fetchCarouselData() -> [CarouselItem] {
//        let one = CarouselItem(button: CustomButton(title: "iOS", id: 1))
//        let two = CarouselItem(button: CustomButton(title: "Android", id: 2))
//        let three = CarouselItem(button: CustomButton(title: "Design", id: 3))
//        let four = CarouselItem(button: CustomButton(title: "Flutter", id: 4))
//        let five = CarouselItem(button: CustomButton(title: "QA", id: 5))
//        let six = CarouselItem(button: CustomButton(title: "PM", id: 6))
//        let seven = CarouselItem(button: CustomButton(title: "JS", id: 7))
//        let eight = CarouselItem(button: CustomButton(title: "React", id: 8))
//        let nine = CarouselItem(button: CustomButton(title: "HTML", id: 9))
//        let ten = CarouselItem(button: CustomButton(title: "CSS", id: 10))
        let one = CarouselItem(button: CustomButton(title: "iOS"))
        let two = CarouselItem(button: CustomButton(title: "Android"))
        let three = CarouselItem(button: CustomButton(title: "Design"))
        let four = CarouselItem(button: CustomButton(title: "Flutter"))
        let five = CarouselItem(button: CustomButton(title: "QA"))
        let six = CarouselItem(button: CustomButton(title: "PM"))
        let seven = CarouselItem(button: CustomButton(title: "JS"))
        let eight = CarouselItem(button: CustomButton(title: "React"))
        let nine = CarouselItem(button: CustomButton(title: "HTML"))
        let ten = CarouselItem(button: CustomButton(title: "CSS"))
        return [one, two, three, four, five, six, seven, eight, nine, ten]
    }
}

class CustomButton: UIButton, Identifiable {
    var id = UUID()
    var buttonIsOn = false {
        didSet {
            self.backgroundColor = buttonIsOn ? #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1) : #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9607843137, alpha: 1)
            self.setTitleColor(buttonIsOn ? #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9607843137, alpha: 1) : #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1), for: .normal)
        }
    }

    init(title: String) {
//        self.id = id
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = buttonIsOn ? #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1) : #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9607843137, alpha: 1)
        self.layer.cornerRadius = 12
        self.titleLabel?.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        self.setTitleColor(buttonIsOn ? #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9607843137, alpha: 1) : #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1), for: .normal)
        self.setTitleColor(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), for: .highlighted)
        self.setTitle(title, for: .normal)
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct Constants {
    static let one : CGFloat = 10 // todo
}

