//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Caleb Hicks on 9/28/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetImageView: UIImageView!
    
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let planet = planet {
            updateWithPlanet(planet)
        }
    }
    
    func updateWithPlanet(planet: Planet) {
        title = planet.name
        planetImageView.image = UIImage(named: planet.imageName)
        diameterLabel.text = "\(planet.diameter)"
        distanceLabel.text = "\(planet.millionKMsFromSun) 10^6km"
        lengthLabel.text = "\(planet.dayLength) hours"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
