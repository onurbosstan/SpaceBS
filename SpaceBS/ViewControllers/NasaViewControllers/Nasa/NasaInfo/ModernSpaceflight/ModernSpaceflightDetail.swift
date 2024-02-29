//
//  ModernSpaceflightDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 1.03.2024.
//

import UIKit

class ModernSpaceflightDetail: UIViewController {
    @IBOutlet weak var modernScrollView: UIScrollView!
    @IBOutlet weak var modernDetailProgramsLabel: UILabel!
    @IBOutlet weak var modernDetailImageView: UIImageView!
    @IBOutlet weak var modernDetailTitleLabel: UILabel!
    var modernPrograms: NasaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let modern = modernPrograms {
            modernDetailProgramsLabel.text = modern.infoName
            modernDetailImageView.image = UIImage(named: modern.image)
            modernDetailTitleLabel.text = modern.title
        }
    }
}
