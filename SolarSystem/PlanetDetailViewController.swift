//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by youcef bouhafna on 2/3/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    
    var planetInfo: Planet?
    
    
    func updateWithPlanet(planet: Planet){
        let imageName = UIImage(named: planet.name.lowercaseString)
        planetImageView.image = imageName
        nameLabel.text = "\(planet.name)"
        distanceLabel.text = "\(planet.millionKMsFromSun)"
        dayLengthLabel.text = "\(planet.dayLength)"
        diameterLabel.text = "\(planet.diameter)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let planetInfo = planetInfo {
            updateWithPlanet(planetInfo)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
