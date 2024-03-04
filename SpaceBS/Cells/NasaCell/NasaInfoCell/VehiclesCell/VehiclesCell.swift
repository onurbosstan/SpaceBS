//
//  VehiclesCell.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 4.03.2024.
//

import UIKit

class VehiclesCell: UITableViewCell {
    @IBOutlet weak var vehiclesLabel: UILabel!
    @IBOutlet weak var vehiclesImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
