//
//  ViewController.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {

   let mainImageView = MainImageView()
    let detailView = DetailView(width: 100, height: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainImageView)
        view.addSubview(detailView)
        setupMainView()
        
    }
    
    func setupMainView() {
        // setup MainImageView
        mainImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: mainImageView.bounds.height).isActive = true
        print(mainImageView.bounds.height)
        
        // setup DetailView
        detailView.height = 200
    }


}

