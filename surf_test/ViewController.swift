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

    override func viewDidLoad() {
        super.viewDidLoad()
        detailView.sectionDetailView.carousel.setCells(array: CarouselItem.fetchCarouselData())
        
        view.addSubview(mainImageView)
        view.addSubview(detailView)
        
        setupMainView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(showAlert), name: .notificationFromFooterDetailView, object: nil)
    }
    
    func setupMainView() {
        let heightDetailView = (UIScreen.main.bounds.height - mainImageView.bounds.height + 72) > Constants.minHeightDetailView ? (UIScreen.main.bounds.height - mainImageView.bounds.height + 72) : Constants.minHeightDetailView
        
        // setup MainImageView
        mainImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        // setup DetailView
        detailView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        detailView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        detailView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        detailView.heightAnchor.constraint(equalToConstant: heightDetailView).isActive = true
    }
    
    @objc func showAlert(notification: Notification) {
        if notification.name == Notification.Name.notificationFromFooterDetailView {
            let alertController = UIAlertController(title: "Поздравляем!", message: "Ваша заявка успешно отправлена!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Закрыть", style: .default, handler: { action in
                print("action")
            })
            
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
        }
    }
}

extension Notification.Name {
    static let notificationFromFooterDetailView = Notification.Name("notificationFromFooterDetailView")
}


