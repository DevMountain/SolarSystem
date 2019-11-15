//
//  Planet.swift
//  SolarSystem
//
//  Created by Karl Pfister on 11/15/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

import Foundation

/**
 A custom object that represents a planet
 */
class Planet {
    /// String value representing the Planet's name
    let planetName: String
    /// String value representing the Planet's image name stored in the Assets folder
    let imageName: String
    /// Integer value of representing the Planet's diameter
    let diameter: Int
    /// Float value representing the length of a day on the Planet
    let dayLength: Float
    /// Float value representing the distance the Planet is from the sun
    let millionKMsFromSun: Float

    init(planetName: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float, imageName:
        String) {

        self.planetName = planetName
        self.imageName = imageName
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
    }
}

