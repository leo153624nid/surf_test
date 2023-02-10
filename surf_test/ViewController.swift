//
//  ViewController.swift
//  surf_test
//
//  Created by macbook on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {

    let mainImageView = MainImageView()
    let detailView = DetailView()
    let footerView = FooterView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainImageView)
        view.addSubview(detailView)
        view.addSubview(footerView)
        
        setupMainView()
        
    }
    
    func setupMainView() {
        let detailHeight = (UIScreen.main.bounds.height - mainImageView.bounds.height + 130 - footerView.bounds.height) > 276 ? (UIScreen.main.bounds.height - mainImageView.bounds.height + 130 - footerView.bounds.height) : 276
        
        // setup MainImageView
        mainImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        mainImageView.heightAnchor.constraint(equalToConstant: mainImageView.bounds.height).isActive = true
        print(mainImageView.bounds.height)
        
        // setup DetailView
        detailView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -58).isActive = true
        detailView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        detailView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        detailView.heightAnchor.constraint(equalToConstant: detailHeight).isActive = true
        
        // setup FooterView
        footerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        footerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        footerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        footerView.heightAnchor.constraint(equalToConstant: 58).isActive = true
    }


}

