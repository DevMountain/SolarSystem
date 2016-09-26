//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Caleb Hicks on 9/28/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
	
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
		guard let planet = planet, self.isViewLoaded else { return }
		
        title = planet.name
        planetImageView.image = UIImage(named: planet.imageName)
        diameterLabel.text = "\(planet.diameter)"
        distanceLabel.text = "\(planet.millionKMsFromSun) 10^6km"
        lengthLabel.text = "\(planet.dayLength) hours"
    }
	
	// MARK: Properties

	var planet: Planet? {
		didSet {
			updateViews()
		}
	}
	
	@IBOutlet weak var planetImageView: UIImageView!
	
	@IBOutlet weak var diameterLabel: UILabel!
	@IBOutlet weak var distanceLabel: UILabel!
	@IBOutlet weak var lengthLabel: UILabel!
}
