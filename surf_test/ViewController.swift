//
//  ViewController.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {

    let mainImageView : UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "image2")
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
//        view.contentMode = .scaleToFill
//        view.contentMode = .scaleAspectFit
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mainImageView)
        setupMainImageView()
        
    }
    
    func setupMainImageView() {
        mainImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 500).isActive = true
    }


}

