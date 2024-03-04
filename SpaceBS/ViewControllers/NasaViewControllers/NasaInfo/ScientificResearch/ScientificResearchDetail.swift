//
//  ScientificResearchDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 4.03.2024.
//

import UIKit

class ScientificResearchDetail: UIViewController {
    @IBOutlet weak var researchScrollView: UIScrollView!
    @IBOutlet weak var researchInfoNameLabel: UILabel!
    @IBOutlet weak var researchDetailImageView: UIImageView!
    @IBOutlet weak var researchDetailTitleLabel: UILabel!
    var researchNasa: NasaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let researchs = researchNasa {
            researchInfoNameLabel.text = researchs.infoName
            researchDetailImageView.image = UIImage(named: researchs.image)
            researchDetailTitleLabel.text = researchs.title
        }
    }
}
