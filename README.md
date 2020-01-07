# Solar System

Students will work with table views, learn about protocols, and implement the UITableViewDataSource and UITableViewDelegate protocols to build a Solar System directory.

Students who complete this project independently are able to:

* instantiate and place a UITableView on the screen
* work with UITableViewControllers
* implement a master-detail interface
* implement the UITableViewDataSource protocol
* use the UITableViewDelegate protocol methods to respond to user interaction
* instantiate and place UIImages on the screen
* use a Model Object Controller to access model objects

## Guide

Create your project, after selecting single view application make sure that you choose the User Interface Storyboard and not SwiftUI. If you create your project after selecting SwiftUI, you will need to delete your project and try again. 

## Model

Create your Planet Model class that will hold the Name, ImageName, Diameter, Day-length, and MaxMillionKMsFromSun.

1. Add a new `Planet.swift` file and define a new `Planet` class.
2. Add your properties choosing the data types carefully. Day length, and maxMillionKMsFromSun will have a decimal point and Diameter will not.
3. Create your `memberwise` Initializer that takes the parameters for each property.

[earth.png](https://lms.devmountain.com/courses/67/files/6104/download?verifier=1nCXXnlP9qETTkZSz6TofxcwrbUm7h1LC3wTXVyl&wrap=1)

[jupiter.png](https://lms.devmountain.com/courses/67/files/6103/download?verifier=uTfI2A4ss44bOq1ihUSRzP7P9iUtjwy0FWseIZIW&wrap=1)

[mars.png](https://lms.devmountain.com/courses/67/files/6102/download?verifier=w9M7rXw3U3JgACyPpVICBq2Yn7LLkMRfgw1uT1va&wrap=1)

[mercury.png](https://lms.devmountain.com/courses/67/files/6101/download?verifier=s9wmM5Urqrbd2JMQQeQkQBs5yKx0GwtP2NV6Lfke&wrap=1)

[neptune.png](https://lms.devmountain.com/courses/67/files/6100/download?verifier=QV1RqvjNfSAecApADN37nNHHh7xfIiF8uKB1ULU7&wrap=1)

[pluto.png](https://lms.devmountain.com/courses/67/files/6099/download?verifier=B9jZnDr4VXcdToqI9V7ETn86KPiNRNNSeIIcHENu&wrap=1)

[saturn.png](https://lms.devmountain.com/courses/67/files/6098/download?verifier=u8iaxxX4Pl8ivmvQqXs84amXaT81zpQSUJyYHEI4&wrap=1)

[solarSystem.png](https://lms.devmountain.com/courses/67/files/6097/download?verifier=9eHE7q6FGB4bHyh7u9WMeiYLXyiTXd3vuIsU00X3&wrap=1)

[uranus.png](https://lms.devmountain.com/courses/67/files/6096/download?verifier=18OX1cSLVLBGFf1wiNXXUrMUaLjqyTFkXXDkCJLc&wrap=1)

[venus.png](https://lms.devmountain.com/courses/67/files/6095/download?verifier=4Mvo9lCsupG9l6YATEqo45ywF8eteXy31lcjrGkR&wrap=1)

## Model Controller

Create your PlanetController class that will hold your planets array. planets will receive its value from a computed property.

1. Add a new `PlanetController.swift` file.
2. Create a new computed property called `planets` and set it to be of-type an array of `Planet` objects.
3. Create your `Planet` objects. Here are the details for each planet:

  * let mercury = Planet(planetName: “Mercury”, planetImageName: “mercury”, planetDiameter: 4880, planetDayLength: 87.969, maxMillionKMsFromSun: 43.0)
  * let venus = Planet(planetName: “Venus”, planetImageName: “venus”, planetDiameter: 12104, planetDayLength: 2802, maxMillionKMsFromSun: 108.2)
  * let earth = Planet(planetName: “Earth”, planetImageName: “earth”, planetDiameter: 12756, planetDayLength: 24, maxMillionKMsFromSun: 149.6)
  * let mars = Planet(planetName: “Mars”, planetImageName: “mars”, planetDiameter: 6792, planetDayLength: 24.7, maxMillionKMsFromSun: 227.9)
  * let jupiter = Planet(planetName: “Jupiter”, planetImageName: “jupiter”, planetDiameter: 142984, planetDayLength: 9.9, maxMillionKMsFromSun: 778.6)
  * let saturn = Planet(planetName: “Saturn”, planetImageName: “saturn”, planetDiameter: 120536, planetDayLength: 10.7, maxMillionKMsFromSun: 1433.5)
  * let uranus = Planet(planetName: “Uranus”, planetImageName: “uranus”, planetDiameter: 51118, planetDayLength: 17.2, maxMillionKMsFromSun: 2872.5)
  * let neptune = Planet(planetName: “Neptune”, planetImageName: “neptune”, planetDiameter: 49528, planetDayLength: 16.1, maxMillionKMsFromSun: 4495.1)
  * let pluto = Planet(planetName: “Pluto”, planetImageName: “pluto”, planetDiameter: 2370, planetDayLength: 153.3, maxMillionKMsFromSun: 5906.4)

4. Return an array of the planet objects you just created
5. Set your `planets` to be static so we can access them with an instance of our `PlanetController`

## Master List View

Build a view that lists the planets using a `UITableViewController` scene. Implement the `UITableViewDataSource` protocol methods (refer to the [documentation](https://developer.apple.com/documentation/uikit/uitableviewdatasource) for a refresher if needed). Note that one could use a `UIViewControllerwith` a `UITableView` placed on it, but `UITableViewController` implements a full screen UITableView by default.

![listViewDemo](https://lms.devmountain.com/courses/67/files/6109/preview?verifier=O774jpcIs2V0PjFGVGwG36oirsSg3AfhUaSs5WCn)

Step by step process

* Delete the initial view controller that was autogenerated for you in your `Main.storyboard` file.
* Add a UITableViewController as your root ViewController in the `Main.storyboard` file. Embed in a UINavigationController
* Implement the UITableViewDataSource methods using the `PlanetController.planets` array.
* Don’t forget to manage your `reuseIdentifer`
* Set up your cells to display the name, image, and index of the planet. Note: Basic `UITableView Cells` have a `UIImage` by default.

Feel free to experiment with the content modes on the cell’s UIImageView to display the image in different ways.

Readability: The UITableViewController subclass template comes with a lot of boilerplate and commented code. For readability, please remove all unused boilerplate from your code.

## Detail View

Build a UIViewController scene in the storyboard that has UI elements to display an image of the planet and the details of a planet, such as distance from the sun, day length, and diameter. Make a planet variable for the tableViewController’s `prepare(for segue: …)` function to pass the planet that is tapped on. Create and call a function that updates the UI elements to display the information from the `planet` variable.

![detailDemo](https://lms.devmountain.com/courses/67/files/6108/preview?verifier=ogkUq2eGrDxJ1O1dqw8V67GZGrp5NjCMnhS8pGNW)

Step by step process:

1. Add a new UIViewController scene to Main.storyboard
2. Create a PlanetDetailViewController file as a subclass of UIViewController and set the class of your detail view scene Hint: In the Main.storyboard, click the yellow circle above the new UIViewController scene, then select the Identity Inspector (the third icon from the right) on the top right of the window. In the text field that says “Class:”, type the name of the new `UIViewController` subclass you just made in the previous step (`PlanetDetailViewController`)
3. Add a UIImageView and UILabels to display the data note: Experiment with Autolayout automatic constraints or UIStackViews to create an appealing detail view
4. Create outlets from the UIImageView and UILabels to your PlanetDetailViewController class If Xcode won’t let you create the outlets: Make sure that you’ve correctly set the class of the detail view scene from the last step.
5. Add an optional planet property (of type Planet) that will be set by the Master List View when performing the segue
6. Add a new function called updateViews that makes sure a planet was successfully passed to the PlanetDetailViewController’s planet property made in step 5 by unwrapping it, then updates the view controller’s title, UIImageView and UILabels with the planet’s data note: This is an extremely common design pattern. Commit it to memory. If you have a detail view or table view cell template that displays data, use an ‘updateViews’ method takes the model data passed from the previous view controller’s prepareForSegue function, and updates the view’s subviews with it.
7. Update the viewDidLoad() function to call the updateViews function. You can test your view and the update function by setting the detail view as the initial view controller, then in the viewDidLoad, assign self.planet to PlanetController.planets[0], before calling updateViews Be sure to reverse those changes when done checking that the view works, or you may have undesired behavior as you create your segue, though make sure to leave the updateViews function in the viewDidLoad.

## Segue

Create a segue between your List View and Detail View that will pass the selected planet to the detail view for display.

Step by step process:

1. Option-drag from your prototype cell in the List View to the Detail View to create a “show” segue.
2. Select the segue and give it an identifier note: As a matter of best practice, the identifier should describe what the segue does, for example `toPlanetDetail`
3. Add the prepareForSegue function to your PlanetListViewController class note: Remember that prepareForSegue will get called on all segues triggered from the current scene and accompanying view controller class
4. Implement the `prepareForSegue method` by checking for the correct segue identifier, capturing an instance of the selected planet, capturing an instance of the PlanetDetailViewController, and setting the planet property of the PlanetDetailViewController Hint: Remember, the `PlanetDetailViewController` will use the `planet` property to update itself when it loads to display to the user

Hint: 
  
    // Identifier: What segue was triggerd

    if segue.identifier ... { 
   
        // Index: What cell was tapped 
        
        if let index = ... { 
        
            // Destination: Where am I going /
            
            guard let destintionVC ... { return } 
            
            // Object to send: What Object/Data am I passing?
            
            let objectToSend = ...
            
            // Reciever Object: What object will catch this data 
            
            destintionVC.reciever = ...
            
        }
        
    } 
    
    
## Black Diamonds

Add additional model data to the Planet class, update the PlanetController to include it, and update the PlanetDetailViewController to display it

* Add an image of the entire Solar System as a header view to the list UITableView
* Create a Unit or UITest that verifies the number of cells in the PlanetListViewController
* Create a Unit or UITest that verifies the values of PlanetController.planets


## Contributions

Please refer to CONTRIBUTING.md.

## Copyright

© DevMountain LLC, 2018. Unauthorized use and/or duplication of this material without express and written permission from DevMountain, LLC is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to DevMountain with appropriate and specific direction to the original content.
