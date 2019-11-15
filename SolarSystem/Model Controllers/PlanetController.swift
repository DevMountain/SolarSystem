//
//  PlanetController.swift
//  SolarSystem
//
//  Created by Karl Pfister on 11/15/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

import Foundation

class PlanetController {
    /**
     Source of truth

     `planets` is a computed property: Its a property that recieves it's value from a computation.
     */
    static var planets: [Planet] {
        let mercury = Planet(planetName: "Mercury", diameter: 4879, dayLength: 4222.6, millionKMsFromSun: 57.9, imageName: "mercury")

        let venus = Planet(planetName: "Venus", diameter: 12104, dayLength: 2802, millionKMsFromSun: 108.2, imageName: "venus")

        let earth = Planet(planetName: "Earth", diameter: 12756, dayLength: 24, millionKMsFromSun: 149.6, imageName: "earth")

        let mars = Planet(planetName: "Mars", diameter: 6792, dayLength: 24.7, millionKMsFromSun: 227.9, imageName: "mars")

        let jupiter = Planet(planetName: "Jupiter", diameter: 142984, dayLength: 9.9, millionKMsFromSun: 778.6, imageName: "jupiter")

        let saturn = Planet(planetName: "Saturn", diameter: 120536, dayLength: 10.7, millionKMsFromSun: 1433.5, imageName: "saturn")

        let uranus = Planet(planetName: "Uranus", diameter: 51118, dayLength: 17.2, millionKMsFromSun: 2872.5, imageName: "uranus")

        let neptune = Planet(planetName: "Neptune", diameter: 49528, dayLength: 16.1, millionKMsFromSun: 4495.1, imageName: "neptune")

        let pluto = Planet(planetName: "Pluto", diameter: 2370, dayLength: 153.3, millionKMsFromSun: 5906.4, imageName: "pluto")

        return [mercury,venus,earth,mars,jupiter,saturn,uranus,neptune,pluto]
    }
}
