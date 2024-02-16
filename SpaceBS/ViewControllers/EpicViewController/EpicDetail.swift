//
//  WhatIsEpic.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 16.02.2024.
//

import UIKit

class EpicDetail: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = """
                The EPIC API provides information on the daily imagery collected by DSCOVR's Earth Polychromatic Imaging Camera (EPIC) instrument. Uniquely positioned at the Earth-Sun Lagrange point, EPIC provides full disc imagery of the Earth and captures unique perspectives of certain astronomical events such as lunar transits using a 2048x2048 pixel CCD (Charge Coupled Device) detector coupled to a 30-cm aperture Cassegrain telescope.

                Image metadata and key information are provided by the JSON API and can be requested by date and for the most recent available date. A listing of all available dates can also be retrieved via the API for more granular control.

                Development of the EPIC API began in 2015, and is supported by the web development team for the Laboratory for Atmospheres in the Earth Sciences Division of the Goddard Space Flight Center. More information regarding the API and retrieval of the imagery for download can be found on the EPIC website.
                """
    }
 

}
