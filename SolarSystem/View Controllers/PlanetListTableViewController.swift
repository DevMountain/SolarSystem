//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by Karl Pfister on 11/15/19.
//  Copyright © 2019 Karl Pfister. All rights reserved.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /// We want our tableView to display the number of rows that match how many `Planet` objects are in our `planets` array
        return PlanetController.planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /// We need to pass in the identifier for our tableView cell to `dequeueResusableCell(withIdentifier:for:)` or our tableView will not load the cells
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        /// We need to access a `Planet` from our `PlanetController.planets` array at the given indexPath to set the views of our cell
        let planet = PlanetController.planets[indexPath.row]
        /// Assign the cell's `textLable.text` property to the `plant.name` property
        cell.textLabel?.text = planet.planetName
        /// Assign the cell's `detailTextLabel.text` property to the `Int` value of it's index path + 1 (order of that planet from the sun)
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        /// Assign the cell's `imageView.image` property to a UIImage initialized from the `planet.imageName` property
        cell.imageView?.image = UIImage(named: planet.imageName)
        /// Set the content mode of the image
        cell.imageView?.contentMode = .scaleToFill
        /// Return the formatted cell 
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /// Identifier : Check what segue was fired
        if segue.identifier == "toPlanetDetailVC" {
            /// Index : Find what cell was tapped on
            if let selectedIndex = tableView.indexPathForSelectedRow {
                /// Destination: Ensure the data is moving to the correct view controller
                if let detailViewController = segue.destination as? PlanetDetailViewController {
                    /// Object: Use the `selectedIndex` to find what object to send?
                    let planet = PlanetController.planets[selectedIndex.row]
                    /// Object: Assign that `planet` object to the landing pad we set on the `detailViewController`
                    detailViewController.planet = planet
                }
            }
        }
    }
}
