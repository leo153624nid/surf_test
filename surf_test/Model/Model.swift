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
            self.backgroundColor = buttonIsOn ? Constants.blackColor : Constants.lightGreyColor
            self.setTitleColor(buttonIsOn ? Constants.lightGreyColor : Constants.blackColor, for: .normal)
        }
    }

    init(title: String) {
        super.init(frame: .zero)    
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = Constants.lightGreyColor
        self.layer.cornerRadius = 12
        self.titleLabel?.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        self.setTitleColor(Constants.blackColor, for: .normal)
        self.setTitleColor(Constants.yellowColor, for: .highlighted)
        self.setTitle(title, for: .normal)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct Constants {
    static let whiteColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    static let yellowColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    static let lightGreyColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9607843137, alpha: 1)
    static let darkGreyColor = #colorLiteral(red: 0.5882352941, green: 0.5843137255, blue: 0.6078431373, alpha: 1)
    static let blackColor = #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1)
    static let minHeightDetailView : CGFloat = 360
    static let heightCarouselItem : CGFloat = 50
    
}

