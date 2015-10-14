//
//  PlanetListViewController.swift
//  SolarSystem
//
//  Created by Eric Mead on 10/13/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //@IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetListTableView: UITableView!
    
   // let imagePicker = UIImagePickerController()
    
    var planetNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //imagePicker.delegate = self
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
        
        if let planetDetailVC:PlanetDetailViewController = segue.destinationViewController as? PlanetDetailViewController {

            planetDetailVC.fillPlanetInfo(index)
            
        
            
        }
        
        
//        planetDetailVC.index = PlanetController.planets[indexPath.row]
        
    }
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//
//        
//        performSegueWithIdentifier("showPlanet", sender: nil)
//        
//        planetNum = 5
//        
//        print("selected \(PlanetController.planets[indexPath.row].name)")
//        
//        
//   }

    
}
