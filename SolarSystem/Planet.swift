//
//  Planet.swift
//  SolarSystem
//
//  Created by Caleb Hicks on 9/28/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class Planet {
    
    let name: String
    let imageName: String
    let diameter: Int
    let dayLength: Float
    let millionKMsFromSun: Float
    
    init(name: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float) {
        
        self.name = name
        self.imageName = name.lowercaseString
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
        
    }
    
}