//
//  ObservationsCell.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 28.02.2024.
//

import UIKit

class ObservationsCell: UITableViewCell {
    @IBOutlet weak var roverNameLabel: UILabel!
    @IBOutlet weak var roverImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
