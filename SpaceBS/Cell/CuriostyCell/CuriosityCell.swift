//
//  HomeCell.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 6.02.2024.
//

import UIKit

class CuriosityCell: UICollectionViewCell {
    @IBOutlet weak var collectionImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionImageView.layer.cornerRadius = 8
    }
}
