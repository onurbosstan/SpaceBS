//
//  ActiveProgramsCell.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 29.02.2024.
//

import UIKit

class ActiveProgramsCell: UITableViewCell {
    @IBOutlet weak var programsNameLabel: UILabel!
    @IBOutlet weak var programsImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
