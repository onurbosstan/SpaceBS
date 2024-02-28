//
//  ObservationsViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 28.02.2024.
//

import Foundation

class ObservationsViewModel {
    let observations: [Observation] = [
        Observation(roverName: "James Webb", imageName: "jameswebb", title: "The James Webb Space Telescope (JWST) is a space telescope produced under the leadership of NASA and with contributions from the European Space Agency and the Canadian Space Agency. The James Webb Space Telescope was launched into space on Ariane Flight VA256 on December 25, 2021. The telescope is designed to collect images with much improved infrared resolution and sensitivity compared to its predecessor, the Hubble Space Telescope, expand humanity's knowledge of astronomy and cosmology, observe the most distant and oldest celestial objects in the Universe, and characterize the atmospheres of potentially habitable exoplanets."),
        Observation(roverName: "Curiosity", imageName: "curiosity", title: """
        On Sol 84 (Oct. 31, 2012), NASA's Curiosity rover used the Mars Hand Lens Imager (MAHLI) to capture this set of 55 high-resolution images, which were stitched together to create this full-color self-portrait.
        The mosaic shows the rover at "Rocknest," the spot in Gale Crater where the mission's first scoop sampling took place. Four scoop scars can be seen in the regolith in front of the rover.

        The base of Gale Crater's 3-mile-high (5-kilometer) sedimentary mountain, Mount Sharp, rises on the right side of the frame. Mountains in the background to the left are the northern wall of Gale Crater. The Martian landscape appears inverted within the round, reflective ChemCam instrument at the top of the rover's mast.

        Self-portraits like this one document the state of the rover and allow mission engineers to track changes over time, such as dust accumulation and wheel wear. Due to its location on the end of the robotic arm, only MAHLI (among the rover's 17 cameras) is able to image some parts of the craft, including the port-side wheels.

        This high-resolution mosaic is a more detailed version of the low-resolution version created with thumbnail images, at PIA16238.

        JPL manages the Mars Science Laboratory/Curiosity for NASA's Science Mission Directorate in Washington. The rover was designed, developed and assembled at JPL, a division of the California Institute of Technology in Pasadena.

        This file is modified in contrast, white balance, perspective distortion and some minor other settings compared to the official version released by NASA. Versions as released by NASA can be found below.
        """),
        Observation(roverName: "Apollo", imageName: "apollo", title: "Illustration of the relative sizes of the one-man Mercury spacecraft, the two-man Gemini spacecraft, and the three-man Apollo spacecraft. Also shows line drawing of launch vehicles (Saturn V, Titan II and Atlas-D) to show their relative size to each other and the position of the spacecraft at launch (highlighted at top)."),
        Observation(roverName: "Hubble", imageName: "hubble", title: "The STS-125 crew aboard space shuttle Atlantis captured this still image of the Hubble Space Telescope as the two spacecraft begin their relative separation on May 19, 2009, after having been linked together for nearly a week. During the week, five spacewalks were performed to complete the final servicing mission to the telescope."),
        Observation(roverName: "Perseverance", imageName: "perseverance", title: "This high-resolution still image is part of a video taken by several cameras as NASA’s Perseverance rover touched down on Mars on February 18, 2021. A camera aboard the descent stage captured this shot.")
    ]
}

