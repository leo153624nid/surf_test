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
        self.backgroundColor = #colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)
        
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
        cells.forEach({ $0.button.buttonIsOn = false })
        guard let item = cells.filter({ $0.button.id == sender.id }).first else {
            return
        }
        
        item.button.buttonIsOn.toggle()
        sender.buttonIsOn.toggle()

        sender.backgroundColor = sender.buttonIsOn ? #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1) : #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9607843137, alpha: 1)
        sender.setTitleColor(sender.buttonIsOn ? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) : #colorLiteral(red: 0.1921568627, green: 0.1921568627, blue: 0.1921568627, alpha: 1) , for: .normal)
        
        self.reloadData()
    }
}

extension CarouselCollectionView : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: CarouselCollectionViewCell.reusedId, for: indexPath) as! CarouselCollectionViewCell
        
//        cell.button.setTitle(cells[indexPath.row].button.title(for: .normal), for: .normal)
//        cell.button.id = cells[indexPath.row].button.id
//        cell.button.buttonIsOn = cells[indexPath.row].button.buttonIsOn
        cell.button = cells[indexPath.row].button
        cell.button.setTitle(cells[indexPath.row].button.title(for: .normal), for: .normal)
        
        cell.button.addTarget(self, action: #selector(buttonIsPress), for: .touchDown)
        cell.button.addTarget(self, action: #selector(buttonIsTap), for: .touchUpInside)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numberOfSymbols = cells[indexPath.row].button.title(for: .normal)?.count ?? 4
        let newWidth = ((numberOfSymbols < 4 ? 4 : numberOfSymbols) + 3) * 10
        return CGSize(width: newWidth, height: 50)
    }
    
    
    
    
}
