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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//       print("\(index)")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func fillPlanetInfo (index: Int){
        let planet = PlanetController.planets[index-1]

//        Diameter.text =
//        Distance.text = String(planet.millionKMsFromSun)
    
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
