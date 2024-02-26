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
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        
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
        
        imageView.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height - 20)
    }
}

