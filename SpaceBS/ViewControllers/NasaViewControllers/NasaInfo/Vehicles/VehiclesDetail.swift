//
//  VehiclesDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 4.03.2024.
//

import UIKit

class VehiclesDetail: UIViewController {
    @IBOutlet weak var vehiclesDetailScrollView: UIScrollView!
    @IBOutlet weak var vehiclesDetailLabel: UILabel!
    @IBOutlet weak var vehiclesDetailImageView: UIImageView!
    @IBOutlet weak var vehiclesDetailTitleLabel: UILabel!
    var vehiclesDetail: NasaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let vehicles = vehiclesDetail {
            vehiclesDetailLabel.text = vehicles.infoName
            vehiclesDetailImageView.image = UIImage(named: vehicles.image)
            vehiclesDetailTitleLabel.text = vehicles.title
        }
    }
}
