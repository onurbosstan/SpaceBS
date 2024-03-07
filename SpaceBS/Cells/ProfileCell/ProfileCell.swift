//
//  ProfileCell.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 7.03.2024.
//

import UIKit

class ProfileCell: UITableViewCell {
    @IBOutlet weak var optionsLabel: UILabel!
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        iconView.layer.cornerRadius = 10
        iconView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
