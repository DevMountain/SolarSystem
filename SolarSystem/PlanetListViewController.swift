//
//  PlanetListViewController.swift
//  SolarSystem
//
//  Created by Caleb Hicks on 9/28/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetListViewController: UITableViewController {

    // MARK: - UITableViewDataSource/Delegate

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return PlanetController.planets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.image = UIImage(named: planet.imageName)

        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toPlanetDetail" {
            
            if let detailViewController = segue.destination as? PlanetDetailViewController,
                let selectedIndex = self.tableView.indexPathForSelectedRow?.row {
                
                let planet = PlanetController.planets[selectedIndex]
                detailViewController.planet = planet
            }
        }
    }

}
