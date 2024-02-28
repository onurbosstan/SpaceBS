//
//  OtherCell.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 25.02.2024.
//

import UIKit

class OtherCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5)
                ])
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.layer.cornerRadius = min(imageView.frame.size.width, imageView.frame.size.height) / 2
        imageView.layer.masksToBounds = true
    }
}

