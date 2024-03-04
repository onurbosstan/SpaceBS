//
//  VehiclesViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 4.03.2024.
//

import Foundation

class VehiclesViewModel {
    var vehicles: [NasaModel] = [
    NasaModel(infoName: "Earth, Moon and L2 point", image: "earthmoon", title: """
    In addition to the discovery, communication satellites were also launched by NASA. Spacecraft are either launched directly from Earth, or the satellite itself can propel itself, or they are launched by a rocket stage that will take it farther, and sometimes from orbiting space shuttles.

    The first US uncrewed satellite was Explorer 1, which began as an ABMA/JPL project in the first part of the Space Race. It was launched in January 1958, two months after Sputnik 1. At NASA's founding, the Explorer project was transferred to the agency and remains so until today. Their mission was to measure magnetic fields and the solar wind, focusing on the Earth and the Sun, among other aspects.

    A more recent Earth satellite not related to the Explorer program was the Hubble Space Telescope, which was launched into orbit in 1990.

    As of 2020, Cygnus and Cargo Dragon are used to resupply the International Space Station (ISS) under NASA's Commercial Resupply Services (CRS) program.

    Cygnus was manufactured by Northrop Grumman and launched on the Antares rocket.

    Cargo Dragon is produced by SpaceX and was launched on the Falcon 9 variant Block 5. SpaceX Dragon, also launched on a Falcon 9, was used to resupply the ISS from 2010 to 2020.

    The James Webb Space Telescope (JWST) is currently scheduled to launch in November 2021 on an Ariane 5 rocket. The halo surrounding the Sun-Earth L2 point will be placed in orbit
    """),
    NasaModel(infoName: "Inner Solar System (including Mars)", image: "innersolar", title: """
    The Inner Solar System has been targeted by at least four unmanned programs. The first was Mariner, which made multiple visits to Mars and Mercury in the 1960s and 1970s.

    The probes launched under the Mariner program were also the first to make a planetary flyby (Mariner 2), the first to take photographs of another planet (Mariner 4), the first planetary orbiter (Mariner 9), and the first to perform a gravity assist maneuver (Mariner 10). This is a technique in which the satellite uses the gravity and speed of the planets to reach its target.

    The first successful landing on Mars was made by Viking 1 in 1976. Twenty years later a rover was landed on Mars by Mars Pathfinder.

    On November 26, 2011, NASA's Mars Science Laboratory mission to Mars was successfully launched. Curiosity successfully landed on Mars on August 6, 2012, and then began searching for evidence of past or present life on Mars.

    On the horizon of NASA's plans is the MAVEN spacecraft, part of the Mars Scout Program, to study Mars' atmosphere.

    NASA's ongoing research (Perseverance (Turkish: Azim) and InSight (Turkish: Insight)) includes in-depth investigations.
    """),
    NasaModel(infoName: "Outer Solar System", image: "sun", title: """
    Outside of Mars, Jupiter was first visited by Pioneer 10 in 1973. More than 20 years later, Galileo sent a probe into the planet's atmosphere, becoming the first spacecraft to orbit the planet.

    Pioneer 11 became the first spacecraft to visit Saturn in 1979, and Voyager 2 made the first (and so far only) visits to Uranus and Neptune in 1986 and 1989, respectively. The first spacecraft to leave the solar system was Pioneer 10 in 1983. It was the furthest spacecraft for a time, but has since been surpassed by both Voyager 1 and Voyager 2.

    Pioneers 10 and 11 and both Voyager probes carry messages from Earth to extraterrestrial life.

    Communication with deep space travel can be difficult. For example, it took about three hours for the radio signal to reach the New Horizons spacecraft when it was more than halfway to Pluto.

    Contact with Pioneer 10 was lost in 2003. Both Voyager probes continue to operate as they explore the outer boundary between the Solar System and interstellar space.

    The New Horizons mission to Pluto was launched in 2006 and successfully passed by Pluto on July 14, 2015. The probe received gravitational assistance from Jupiter in February 2007 while examining some of Jupiter's inner moons and testing onboard instruments during the flight. Other active spacecraft were Juno for Jupiter and Dawn for the asteroid belt.

    NASA continues to support in situ Galileo (1989–2003), Cassini (1997–2017), and “Juno” (2011–present) explorations beyond the asteroid belt, including passes of Pioneer and Voyager into unexplored trans-Pluto territory and gas giant orbiters did.
    """)
    ]
}
