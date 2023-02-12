//
//  CarouselCollectionView.swift
//  surf_test
//
//  Created by macbook on 12.02.2023.
//

import UIKit

class CarouselCollectionView: UICollectionView {
    
    let cells = [CarouselModel]()

    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        delegate = self
        dataSource = self
        
        register(CarouselCollectionViewCell.self, forCellWithReuseIdentifier: CarouselCollectionViewCell.reusedId)
        
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension CarouselCollectionView : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return cells.count
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CarouselCollectionViewCell.reusedId, for: indexPath)
        
        return cell
    }
    
    
}
