//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Eric Mead on 10/13/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    @IBOutlet weak var Diameter: UILabel!
    
    @IBOutlet weak var Distance: UILabel!
    
    @IBOutlet weak var LengthOfDay: UILabel!
    
    @IBOutlet weak var planetImage: UIImageView!
    
    var myDiameter: String?
    var myDistance: String?
    var myLengthOfDay: String?
    var myPlanetImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Diameter.text = myDiameter
        Distance.text = myDistance
        LengthOfDay.text = myLengthOfDay
        planetImage.image = myPlanetImage
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    

}
