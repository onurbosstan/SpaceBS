//
//  OtherCollectionLayout.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 25.02.2024.
//


import UIKit

class OtherCollectionLayout: UICollectionViewFlowLayout {
    let colmnsNumber : Int
    var heightRatio : CGFloat = (1.0 / 1.0)
    
    //minColmnsNumber = MinimumSutünAralığı , minCell = minimumSatıraralığı
    init(colmnsNumber : Int, minColmnsNumber : CGFloat = 0, minCell : CGFloat = 0)
    {
        self.colmnsNumber = colmnsNumber
        super.init()
        self.minimumInteritemSpacing = minColmnsNumber
        self.minimumLineSpacing = minCell
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func prepare() {
        super.prepare()
        guard collectionView != nil else { return }
        
        let width = CGFloat(120)
        let height = CGFloat(120)
        
        itemSize = CGSize(width: width, height: height)
    }
}
