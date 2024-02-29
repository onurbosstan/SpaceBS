//
//  HumanSpaceflightDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 1.03.2024.
//

import UIKit

class HumanSpaceflightDetail: UIViewController {
    @IBOutlet weak var programsLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var programsTitleLabel: UILabel!
    var humansPrograms: NasaModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let programs = humansPrograms {
            programsLabel.text = programs.infoName
            imageView.image = UIImage(named: programs.image)
            programsTitleLabel.text = programs.title
        }
    }
}
