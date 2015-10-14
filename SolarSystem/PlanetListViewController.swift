//
//  PlanetListViewController.swift
//  SolarSystem
//
//  Created by Eric Mead on 10/13/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var planetListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   //MARK: TableView

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
       
        return PlanetController.planets.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = PlanetController.planets[indexPath.row].name
        
        cell.imageView?.image = UIImage(named: PlanetController.planets[indexPath.row].imageName)
        
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //not sure if I need an if statement to control the variable set...
        
        
        let index = (planetListTableView.indexPathForSelectedRow?.row)! + 1
        
        
        if let planetDetailVC:PlanetDetailViewController = segue.destinationViewController as?
            
            PlanetDetailViewController {

                
                print("The index of this planet in the array is \(index - 1)")
                print("The name of this planet is \(PlanetController.planets[index-1].name)")
                print("The diameter of \(PlanetController.planets[index-1].name) is \(PlanetController.planets[index-1].diameter)")
                print("The daylength of \(PlanetController.planets[index-1].name) is \(PlanetController.planets[index-1].dayLength)")
                print("The distance from the sun of \(PlanetController.planets[index-1].name) is \(PlanetController.planets[index-1].millionKMsFromSun) million kilometers")
                
                planetDetailVC.title = (PlanetController.planets[index-1].name)
                
                
                planetDetailVC.myPlanetImage = UIImage(named:PlanetController.planets[index-1].imageName)
                planetDetailVC.myDiameter = String(PlanetController.planets[index-1].diameter)
                planetDetailVC.myDistance = String(PlanetController.planets[index-1].millionKMsFromSun)
                planetDetailVC.myLengthOfDay = String(PlanetController.planets[index-1].dayLength)
            
        }
        

        
    }
    


    
}
