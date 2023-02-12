//
//  CarouselCollectionView.swift
//  surf_test
//
//  Created by macbook on 12.02.2023.
//

import UIKit

class CarouselCollectionView: UICollectionView {
    
    var cells = [CarouselItem]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        self.backgroundColor = Constants.whiteColor
        
        delegate = self
        dataSource = self
        
        register(CarouselCollectionViewCell.self, forCellWithReuseIdentifier: CarouselCollectionViewCell.reusedId)
        
        translatesAutoresizingMaskIntoConstraints = false
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCells(array: [CarouselItem]) {
        self.cells = array
    }
    
    @objc func buttonIsPress(sender: CustomButton) {
        print("button is pressed")
    }
    
    @objc func buttonIsTap(sender: CustomButton) {
        print("button is tapped")
        guard let item = cells.filter({ $0.button.id == sender.id }).first else {
            return
        }
        
        sender.buttonIsOn.toggle()
        if sender.buttonIsOn {
            cells.forEach({ $0.button.buttonIsOn = false })
        }
        item.button.buttonIsOn.toggle()
        
        cells = cells.filter({ $0.button.id != item.button.id })
        cells.insert(item, at: 0)
        scrollRectToVisible(CGRect(x: 0, y: 0, width: 100, height: 100), animated: true)

        self.reloadData()
    }
}

extension CarouselCollectionView : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CarouselCollectionViewCell.reusedId, for: indexPath) as! CarouselCollectionViewCell
        
        cell.button.setTitle(cells[indexPath.row].button.title(for: .normal), for: .normal)
        cell.button.id = cells[indexPath.row].button.id
        cell.button.buttonIsOn = cells[indexPath.row].button.buttonIsOn
        
        cell.button.addTarget(self, action: #selector(buttonIsPress), for: .touchDown)
        cell.button.addTarget(self, action: #selector(buttonIsTap), for: .touchUpInside)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numberOfSymbols = cells[indexPath.row].button.title(for: .normal)?.count ?? 4
        let newWidth = ((numberOfSymbols < 4 ? 4 : numberOfSymbols) + 3) * 10
        return CGSize(width: newWidth, height: Int(Constants.heightCarouselItem))
    }
    
    
}
