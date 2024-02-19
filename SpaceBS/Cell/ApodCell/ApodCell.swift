//
//  ApodCell.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 19.02.2024.
//

import UIKit

class ApodCell: UITableViewCell {
    @IBOutlet weak var apodLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    @IBAction func apodDetailsButton(_ sender: Any) {
        
    }
}
