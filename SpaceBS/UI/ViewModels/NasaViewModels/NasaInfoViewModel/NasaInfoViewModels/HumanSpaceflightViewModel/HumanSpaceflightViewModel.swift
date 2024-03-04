//
//  HumanSpaceflightViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 29.02.2024.
//

import Foundation

class HumanSpaceflightViewModel {
    let humanPrograms: [NasaModel] = [
    NasaModel(infoName: "X-15 Rocket Aircraft Program (1954-1968)", image: "xrocket", title: "The X-15 actually started as NACA's experimental hypersonic rocket plane project. The United States Air Force and Navy also contributed to the project. A tender was held for the body on 30 December 1954, and for the engine on 4 February 1955. The fuselage construction work was undertaken by North American Aviation, and the XLR30 engine construction work was undertaken by Reaction Motors, and three aircraft were built. The aircraft was tested for the first time by dropping it between the wings of two NASA Boeing B-52 Stratofortresses from an altitude of 45,000 feet (~14 km) and at a speed of 500 mph (~805 km/h). Twelve pilots from the Navy, Air Force, and NACA (later NASA) were selected for the program. One hundred and ninety-nine flights were made between 1959 and 1968. During these flights, the speed record for a manned aircraft was set at Mach 6.72 (7,273 km/h) (valid until 2014). The altitude record of the X-15 is 354,000 feet (107.96 km). Eight pilots were awarded astronaut badges by the Air Force for flying above 260,000 feet (80 km). Thanks to two flights above 100 kilometers (330,000 ft) by Joseph A. Walker, it earned the title of X-15 spacecraft according to Federation of International Aeronautics standards. The program produced many technical inventions for future studies, such as reaction control system jets that regulate the spacecraft's attitude, pressurized spacesuits and horizon-defined navigation. The data collected during atmospheric entry and descent contributed greatly to the design of future spacecraft."),
    NasaModel(infoName: "Mercury (1958-1963", image: "nasamercury", title: """
        In 1958, NASA established an engineering group called the Space Task Group to manage human spaceflight programs under the direction of Robert Gilruth. Its initial programs were conducted under the pressure of Cold War rivalry between the United States and the Soviet Union. NASA took over the US Air Force's Man in Space Soonest program, which considered crewed spacecraft designs ranging from rocket planes like the X-15 to small ballistic space capsules. By 1958, spaceplane concepts were eliminated in favor of ballistic capsules, and when NASA was founded that same year, the project was transferred to NASA, which renamed the project the Mercury Project.

        The first seven astronauts were selected from candidates from the Navy, Air Force and Navy test pilot programs. On May 5, 1961, astronaut Alan Shepard became the first American in space when he launched into a 15-minute ballistic (suborbital) flight in a capsule called Freedom 7 with a Redstone booster.

        John Glenn became the first American to be launched into orbit aboard the Atlas launch vehicle Friendship 7 on February 20, 1962.

        Glenn completed three orbits, followed by three more orbital flights, culminating in Gordon Cooper's 22-orbit flight aboard Faith 7 on 15–16 May 1963. Katherine Johnson, Mary Jackson, and Dorothy Vaughan were three of the human computers that performed orbital calculations in the Space Race. Johnson was known for performing orbital calculations for John Glenn's 1962 mission, where he manually calculated the same equations run on a computer.[19] Mercury's rival in the Soviet Union (USSR) was the single-pilot Vostok spacecraft. They sent the first man in space, cosmonaut Yuri Gagarin, into a single Earth orbit aboard Vostok 1 in April 1961, a month before Shepard's flight. In August 1962, they made a record flight of nearly four days aboard Vostok 3 with Andriyan Nikolayev and also conducted a simultaneous Vostok 4 mission carrying Pavel Popovich
        """),
    NasaModel(infoName: "Gemini (1961-1966)", image: "nasagemini", title: """
        It is a project based on increasing the capacity of the Mercury spacecraft to prepare for long-term space flights, developing space rendezvous techniques and ensuring precision landing on Earth. It was founded in 1962 with the goals of outpacing the Soviets, supporting the Apollo Project, extravehicular activity (UTDE), rendezvous and connecting with vehicles in space. The missions were carried out by two astronauts. Gemini 3, the first manned Gemini flight, was conducted by Gus Grissom and John W. Young on March 23, 1965. Nine missions were carried out between 1965 and 1966. Within the scope of the fourteen-day endurance mission, medical data was collected on dating, attachment, UTDE, and the effects of the zero-gravity environment on human health.


        Richard Gordon performing a spacewalk to attach a tether to the Agena Target Vehicle on Gemini 11, 1966
        In response to the Gemini Project, Soviet Russia under Nikita Khrushchev changed the design of the Vostok spacecraft and developed the two- or three-person Voskhod spacecraft. They achieved a two-man flight before Gemini's first flight. They also managed to achieve a three-cosmonaut flight in 1963 and the first UTDE in 1964. After that, the program was canceled and Gemini caught up, but in the meantime Sergey Korolyov developed the Soyuz spacecraft, the counterpart of the Apollo Project.
        """),
    NasaModel(infoName: "Apollo (1960-1972", image: "nasaapollo", title: """
        In the eyes of the American public, it seemed certain that the Soviets would win the Space Race by sending the first cosmonaut to the Moon. For this reason, President John F. Kennedy submitted to Congress on May 25, 1961, a project bill for the Federal government to send astronauts to the Moon by the end of the 1960s. This project was later named Project Apollo.

        Project Apollo is one of the most expensive American scientific programs. It cost an estimated $22.3 trillion.

        Saturn rockets, which were much larger than the rockets built for previous projects, were used as launch vehicles. Spaceships were also larger; It consisted of two main parts, the combined command and service module (CSM) and the lunar landing module. The LM would separate upon landing on the moon and return to Earth with only the three astronauts in the command module (CM).

        In its second manned flight mission, Apollo 8 in December 1968 brought astronauts around the Moon.[25] Shortly before this, the Soviets had sent an unmanned spacecraft around the Moon. The next two missions studied the docking maneuvers necessary for landing on the Moon. Eventually, Apollo 11 landed on the Moon in July 1969. The first person to set foot on the moon was Neil Armstrong. Then Buzz Aldrin set foot on the Moon. Meanwhile, Michael Collins was orbiting the Moon. In the next five Apollo missions, astronauts landed on the Moon. The last one took place in December 1972. During these six Apollo missions, 12 astronauts walked on the Moon. As a result of these missions, very valuable scientific data was obtained and 381.7 kilograms (842 lb) of samples were taken from the Moon.

        The Apollo Project is one of the important points in humanity's space adventure. It was the first time a manned mission was carried out outside Low Earth orbit and the first time a human was sent to another celestial body. For the first time, a manned spacecraft orbited a celestial body with Apollo 8. Apollo 17 is important as it is the last Moon walk and the last manned mission conducted outside Low Earth orbit. During the project, significant developments took place in aviation, communication and computer technologies, as well as rocket and manned spacecraft technologies. The project sparked interest in many areas of engineering. Items and artifacts belonging to the project are exhibited in various places around the world, especially in the Smithsonian National Air and Space Museum.
        """),
    NasaModel(infoName: "Skylab (1965-1979", image: "nasaskylab", title: """
        Skylab is the United States' only independent space station. It was designed in 1965 as a workshop attached to the upper side of the Saturn IB rocket. The 69,950 lb (77,088 kg) station, built on Earth, was placed on the top two stages of the Saturn V rocket on May 14, 1975, and sent into orbit at an altitude of 435 km. The station, which lost its thermal protection and electricity-generating solar panel during takeoff, was repaired by the crew. It was used successfully by three teams for 171 days between 1973 and 1974. It has laboratories for microgravity and Sun observation. NASA planned to add a space shuttle dock to the station and move the station into safer higher orbit, but the space shuttle could not be ready until Skylab's return date on June 11, 1979.

        To save money, NASA sent Skylab into space on a Saturn V rocket originally dedicated to a canceled Apollo mission. Apollo spacecraft were used to transport astronauts to and from Skylab. The three-person crew stayed in space for periods of 28, 59 and 84 days.

        Skylab's living volume is 320 cubic meters, 30.7 times that of the Apollo command module.
        """),
    NasaModel(infoName: "Apollo - Soyuz (1972-1975", image: "nasapollosoyuz", title: """
        On May 24, 1972, US President Richard Nixon and USSR President Alexei Kosygin signed a joint manned space mission agreement. The goal of this agreement was to ensure the interlocking of international spacecraft in the future. Within the scope of the project, the aim was to meet and dock in space with a surplus Apollo Command/Service Module in Earth orbit and a Soyuz spacecraft. The operation took place in July 1975. This mission was the last American manned space mission until the first orbital flight aboard the space shuttle in April 1981.

        The mission involved both joint and separate scientific experiments and provided useful engineering experience for future US-Russian spaceflights such as the Shuttle–Mir program and the International Space Station.
        """)
    ]
}
