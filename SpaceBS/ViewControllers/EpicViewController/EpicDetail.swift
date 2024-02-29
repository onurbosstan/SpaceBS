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
                EPIC (Earth Polychromatic Imaging Camera) is a 10-channel spectroradiometer (317 – 780 nm) onboard NOAA’s DSCOVR (Deep Space Climate Observatory) spacecraft. EPIC provides 10 narrow band spectral images of the entire sunlit face of Earth using a 2048x2048 pixel CCD (Charge Coupled Device) detector coupled to a 30-cm aperture Cassegrain telescope (Figure 1).

                The DSCOVR spacecraft is located at the Earth-Sun Lagrange-1 (L-1) point giving EPIC a unique angular perspective that will be used in science applications to measure ozone, aerosols, cloud reflectivity, cloud height, vegetation properties, and UV radiation estimates at Earth's surface.
                """
    }
 

}
