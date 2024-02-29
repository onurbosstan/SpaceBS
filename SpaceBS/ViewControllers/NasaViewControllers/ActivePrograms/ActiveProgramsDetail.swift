//
//  ActiveProgramsDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 29.02.2024.
//

import UIKit

class ActiveProgramsDetail: UIViewController {
    @IBOutlet weak var activeProgramsLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var programsTitleLabel: UILabel!
    var activePrograms: ActiveProgramsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let programs = activePrograms {
            activeProgramsLabel.text = programs.programsName
            imageView.image = UIImage(named: programs.image)
            programsTitleLabel.text = programs.title

        }
    }
}
