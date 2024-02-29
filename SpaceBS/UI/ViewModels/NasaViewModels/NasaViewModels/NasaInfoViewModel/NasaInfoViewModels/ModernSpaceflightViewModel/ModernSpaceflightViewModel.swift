//
//  ModernSpaceflightViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 1.03.2024.
//

import Foundation

class ModernSpaceflightViewModel {
    let modernPrograms: [NasaModel] = [
    NasaModel(infoName: "Space Shuttle (1972-2011)", image: "spacess", title: """
        The Space Shuttle became NASA's main focus in the late 1970s and 1980s. Intended as a frequently launchable, fully reusable vehicle, the design was modified to accommodate external fuel storage to minimize development cost, and four Space Shuttles were built by 1985. The first space shuttle, Columbia, was launched into space on April 12, 1981, the 20th anniversary of Yuri Gagarin's first known human flight.
        
        The main components were the orbiter of the spacecraft with an external fuel tank and two solid-fuel launch rockets alongside it. It was the only time the external storages, which were larger than the spacecraft itself, were made available for reuse. The shuttle can orbit at altitudes of 185–643 km (115–400 statute miles)[32] and has a maximum payload of 24,400 kg (54,000 lb) (to low orbit). Missions were 5 to 17 days long and crewed between two and eight astronauts.
        
        On 20 missions (1983-1998) the Space Shuttle carried Spacelab, designed in collaboration with the European Space Agency (ESA). The Spacelab was not designed for autonomous flight, but the astronauts remained in the Shuttle's cargo hold while they entered through an airlock.
        
        On June 18, 1983, Sally Ride became the first American woman in space aboard the Space Shuttle “Challenger” STS-7 mission. Another famous series of missions was the launch and subsequent successful repair of the Hubble Space Telescope in 1990 and 1993, respectively.
        
        In 1995, Russian-American cooperation continued with Shuttle-Mir services (1995-1998). Once again, an American vehicle docked with a Russian ship, this time a full-fledged space station. This cooperation continued with Russia and the United States as the two largest partners of the largest space station ever built, the International Space Station (ISS). The strength and importance of this work became more evident during the space shuttle Columbia accident in 2003, which caused the space shuttle fleet to be unavailable for two years. Because at that time, NASA used Russian launch vehicles for astronaut time to the ISS.
        
        The shuttle fleet lost two orbiters and lost 14 astronauts in two disasters, Challenger in 1986 and Columbia in 2003[37]. While the Endeavor Space Shuttle OV 105, which was lost in 1986, was built from spare parts and made lighter, NASA canceled another guidance vehicle to replace the lost shuttle after the second accident in 2003.
        
        NASA's Space Shuttle program ended with the successful landing of the Atlantis mech at Kennedy Space Center on July 21, 2011. During the 30-year program, 135 missions were carried out and 300 astronauts were sent into space.
        """),
    NasaModel(infoName: "International Space Station (1993-present)", image: "iss", title: """
        International Space Station (ISS) NASA's Freedom Space Station is a combination of the Soviet/Russian Mir-2 station, the European Columbus station, and the Japanese Kibō laboratory module.

        NASA first planned to develop "Freedom" alone in the 1980s, but US budget constraints forced these projects to be completed in 1993 by NASA, Roscosmos (RKA), Japan Aerospace Exploration Agency (JAXA), European Space Agency (ESA) and Canadian Space Agency. It led to their unification into a single multinational program managed by (CSA).

        International Space Station
        The station consists of pressurized modules, external cages, solar panels, and other components fabricated in various factories around the world, and was launched by Russian Proton and Soyuz rockets and the US Space Shuttles.[39] Assembly in low Earth orbit began in 1998, with completion of the US Orbital Segment in 2019 and completion of the Russian Orbital Segment in 2010, although there is some debate as to whether new modules should be added in the segment. Ownership and use of the space station are determined by international treaties and rules.

        Ownership and use of the space station divides the station into two areas, allowing Russia to retain full ownership of the Russian Orbital Segment (with the exception of Zarya), with the U.S. Orbital Segment allocated among other international partners. It is determined by international agreements and rules.

        Long-duration missions are called International Space Station Expeditions. Expedition members generally remain on station for approximately six months.

        The normal number of members is three, but after the Columbia accident in 2003, the number of members was temporarily reduced to two. As of May 2009, the number of reconnaissance mission crews is six.[46] Once the Commercial Crew Program becomes active, the ISS will be able to be used by a crew of seven as planned.

        The ISS has been used uninterruptedly since November 2, 2000, breaking the record for the use of the Mir space station, and has hosted astronauts and cosmonauts from 15 different countries to date.

        The station is visible to the naked eye from Earth and, as of 2024, is the largest artificial satellite in orbit, with a greater mass and volume than any previous space station on Earth.

        Soyuz spacecraft deliver crew members, remain stationary in orbit for their half-year mission, and then take them back home. Several uncrewed cargo spacecraft serve the ISS; These are the Russian Progress spacecraft, which has been doing so since 2000, the European Automated Transfer Vehicle (ATV) since 2008, the Japanese H-II Transfer Vehicle (HTV) since 2009, the SpaceX Dragon from 2012 to 2020, and the SpaceX Dragon from 2013 to 2013. It has been the American Cygnus spacecraft since.

        Before its retirement, the Space Shuttle was also used for cargo transfer, often replacing expedition team members during their stay, despite not having the ability to dock. Until another US crewed spacecraft is ready, crew members will travel to and from the International Space Station exclusively in Soyuz. The largest number of people occupying the ISS is thirteen; this happened three times during recent Shuttle ISS assembly missions.

        On March 29, 2019, the ISS was scheduled to conduct its first all-female spacewalk, but it was postponed; Jessica Meir and Christina Koch performed the first all-female spacewalk on October 18 as part of a long series of updates to the ISS's power systems and physics observatories. The ISS program is expected to continue until 2030
        """),
    NasaModel(infoName: "Constellation Program (2005-2010)", image: "team", title: """
        While the Space Shuttle program was still on hold after the loss of Columbia, President George W. Bush announced his Vision for Space Exploration, including retiring the Space Shuttle after completing the International Space Station. The plan was enacted by the NASA Authorization Act of 2005 and calls for NASA to launch and develop the Crew Exploration Vehicle (then called Orion) by 2010, return Americans to the Moon by 2020, land on Mars if possible, and use the Hubble Space Telescope. With its restoration of the ISS and robotic solar system exploration, the human presence on the ISS directs NASA to continue Earth observation and astrophysics research. The goals of crewed exploration motivated NASA's Constellation Program.

        On December 4, 2006, NASA announced plans for a permanent Moon base. The goal was to begin construction of the lunar base by 2020, and to have a fully functional base that would allow crew rotations and on-site resource utilization by 2024. But in 2009, the Augustine Committee found that the program was "on an unsustainable trajectory." In February 2010, President Barack Obama's administration proposed eliminating public funding for it.
        """),
    NasaModel(infoName: "Commercial Crew Program (2011-present)", image: "commercial", title: """
        The Commercial Crew Program (CCP) provides commercially operated crew transport services under contract to the International Space Station that conduct crew returns to and from the International Space Station (ISS) between missions of the International Space Station program. American aerospace manufacturer SpaceX began operating in 2020 using its Crew Dragon spacecraft, and Boeing will join when the Boeing Starliner spacecraft also becomes operational in 2023.

        The spacecraft is owned and operated by the vendor and provides crew transportation as a commercial service to NASA. Each mission sends up to four astronauts to the ISS, with the option of a fifth passenger. Operational flights occur approximately every six months for missions lasting approximately six months. A spacecraft remains attached to the ISS during its mission, and missions usually overlap for at least several days. Between the retirement of the Space Shuttle in 2011 and the first operational CCP mission in 2020, NASA relied on the Soyuz program to transport astronauts to the ISS.

        The Crew Dragon spacecraft is launched into space atop the Falcon 9 Block 5 launch vehicle, and the capsule returns to Earth via a water landing in the Atlantic Ocean. The program's first operational mission, SpaceX Crew-1, launched on November 16, 2020. The Boeing Starliner spacecraft will participate after its final test flight, launching on top of the Atlas V N22 or Vulcan Centaur launch vehicle. Instead of crashing into the ocean, the Starliner capsule will return to land via airbags at one of four designated sites in the western United States.

        The Commercial Crew Development Program was established in 2010 with the aim of sending a four-person spacecraft to the ISS, keeping the crew there for 180 days, and returning it to Earth. The program is also planned to transport people to a future commercial space station. Like the Commercial Procurement Service, this program also offers monetary rewards upon reaching certain targets. The program is financed by the American Government and run by NASA.

        NASA announced the winners of the first phase of the program in 2010. A total of $50 million was given as incentives to five American companies to research and develop manned spacecraft technologies. In 2011, the winners of the second phase were announced and a total of 270 million dollars were given to four companies. In 2012, the winners of the third phase were announced and NASA awarded a total of $1.1 billion to the three winning companies to develop crew transfer systems.

        Development of the Commercial Crew Program began in 2011 with the Commercial Crew Development (CCDev) program scope, initially intended as a Recovery Act initiative aimed at funding private sector development of human spaceflight technologies. While NASA had previously considered internally developed crewed vehicles for ISS crew conversion, such as the Orbital Spacecraft and the Orion spacecraft, the agency instead canceled the Constellation Program and redesigned Orion for crewed deep space exploration only. turned to commercial industry. In a series of open competitions over the next two years, Boeing, Blue Origin, Sierra Nevada and SpaceX developed proposals for ISS crew transport vehicles. Boeing and SpaceX were selected by NASA to fly astronauts to the ISS in September 2014, but the decision was met with an unsuccessful legal challenge from Sierra Nevada. The first operational missions in the program were initially planned for 2017, but the date for the first operational flights was moved to 2020, with NASA purchasing additional seats on the Soyuz spacecraft based on Soyuz MS-17 to compensate for numerous problems and delays in the design, testing and operation of the spacecraft and launch vehicles. pushed. Crew Dragon's first operational flight launched in November 2020, with Starliner's final test flight planned to launch in 2022 ahead of Boeing's first operational mission.
        """),
    NasaModel(infoName: "Journey to Mars (2010-2017", image: "marso", title: """
        President Obama's plan was to develop American private spaceflight capabilities to take astronauts to the International Space Station, replace Russian Soyuz capsules, and use Orion capsules for ISS emergency escape purposes.

        In a speech at Kennedy Space Center on April 15, 2010, Obama proposed a new heavy lift vehicle (HLV) to replace the previously planned Ares V. In his speech, Obama called for a crewed mission to an asteroid as soon as 2025 and a crewed mission to Mars orbit in the mid-2030s. The NASA Authorization Act of 2010 was passed by Congress and signed into law on October 11, 2010. The law officially canceled the Constellation program.

        The NASA Authorization Act of 2010 required that a newly designed HLV be selected within 90 days of passage; The launch vehicle was called Space Launch System. The new law also required the construction of spacecraft beyond low earth orbit. Orion (the spacecraft), which is being developed as part of the Constellation program, was chosen to fulfill this role. The Space Launch System is planned to launch both Orion and other hardware needed for missions beyond low Earth orbit.[65] The SLS will be improved over time with more powerful models. The initial capacity of the SLS must be increased to 70 t (150,000 lb) (later 95 t or 209,000 lb) into low Earth orbit. It is later planned to increase it to 105 t (231,000 lb) and then to 130 t (290,000 lb). The Orion capsule first flew in Exploration Flight Test 1 (EFT-1), launched atop a Delta IV Heavy rocket on December 5, 2014.

        NASA conducted a feasibility study in 2012 and developed the Asteroid Redirect Mission as an uncrewed mission to transport a boulder-sized near-Earth asteroid (or a boulder-sized piece of a larger asteroid) into lunar orbit. The mission would demonstrate Ion engine technology and techniques that could be used for planetary defense against an asteroid impact, as well as transport cargo to Mars to support a future human mission. The rock in lunar orbit can later be visited by astronauts. The Asteroid Redirect Mission was canceled in 2017 as part of the first FY2018 NASA budget under President Donald Trump.

        The Orion spacecraft was launched for testing uncrewed on a Delta IV Heavy rocket in December 2014.
        """),
    NasaModel(infoName: "Artemis Program (2017-present)", image: "artemis", title: """
        Since 2017, NASA's crewed spaceflight program has been the Artemis program, which includes assistance from US commercial spaceflight companies and international partners such as ESA, JAXA, and CSA. The aim of this program is to land "the first woman and the next man" in the south pole region of the Moon by 2024. Artemis will be the first step toward the long-term goal of establishing a sustainable presence on the Moon, laying the foundations for private companies to build a lunar economy and eventually sending humans to Mars.

        The Orion Crew Exploration Vehicle was taken from the canceled Constellation program for Artemis. Artemis 1 is the first uncrewed launch of the Space Launch System (SLS) and will also send an Orion spacecraft on Far Reverse Orbit, and as of May 2020 is scheduled to launch no earlier than November 2021.

        Concepts for how the first human landing site on Mars could evolve over multiple human expeditions
        NASA's next major space initiative will be the construction of the Lunar Gateway. This initiative involves the construction of a new space station that will have many features in common with the existing International Space Station, but will orbit the Moon instead of the Earth. This space station will be designed primarily for temporary human habitation. The first tentative steps to return to crewed lunar missions will be Artemis 2, which will include the Orion crew module propelled by SLS and will be launched in 2023. This mission will be a 10-day mission planned to briefly place a crew of four on a Moon flight. Construction of the Gateway would begin with the proposed Artemis 3, which is planned to send a crew of four into lunar orbit along with the Gateway's first modules. This mission would last up to 30 days. NASA plans to build full-scale deep space habitats such as the Lunar Gateway and Nautilus-X as part of the Next Space Technologies for Exploration Partnerships (NextSTEP) program. In 2017, NASA was directed by the congressional NASA Transition Authorization Act of 2017 to take humans into Mars orbit (or the surface of Mars) by the 2030s.

        In September 2020, as part of the Artemis program, NASA announced a plan to send astronauts to the Moon by 2024. Astronauts will travel in the Orion capsule launched by the SLS rocket.

        It was announced in February 2021 that the "Blue Ghost Lander," a robotic device built in Cedar Park, Texas, would send Mare Crisium to the Moon to help prepare for NASA's goal of returning to the Moon's surface in 2023.
        """)
    ]
}
