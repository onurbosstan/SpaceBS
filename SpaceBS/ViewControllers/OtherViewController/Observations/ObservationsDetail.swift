//
//  ObservationsDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 28.02.2024.
//

import UIKit

class ObservationsDetail: UIViewController {
    @IBOutlet weak var detailScrollView: UIScrollView!
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailRoverNameLabel: UILabel!
    @IBOutlet weak var detailTitleLabel: UILabel!
    var observation: Observation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let observation = observation {
            detailRoverNameLabel.text = observation.roverName
            detailImageView.image = UIImage(named: observation.imageName)
            detailTitleLabel.text = observation.title
        }
    }
}
