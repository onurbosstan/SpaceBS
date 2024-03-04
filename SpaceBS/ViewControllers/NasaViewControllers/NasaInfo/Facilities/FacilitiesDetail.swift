//
//  FacilitiesDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 4.03.2024.
//

import UIKit

class FacilitiesDetail: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var facilitiesNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var facilitiesTitleLabel: UILabel!
    var facilitiesNasas: NasaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let facilities = facilitiesNasas {
            facilitiesNameLabel.text = facilities.infoName
            imageView.image = UIImage(named: facilities.image)
            facilitiesTitleLabel.text = facilities.title
        }

    }
}
