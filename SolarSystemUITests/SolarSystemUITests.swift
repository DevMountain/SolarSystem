//
//  SolarSystemUITests.swift
//  SolarSystemUITests
//
//  Created by Caleb Hicks on 9/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import XCTest

class SolarSystemUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testListToDetailView() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        for planet in PlanetController.planets {
            verifyViewForPlanet(planet)
        }
        
    }
    
    func verifyViewForPlanet(planet: Planet) {
        let app = XCUIApplication()
        
        app.tables.staticTexts[planet.name].tap()
        
        let labelCount = app.staticTexts.count
        XCTAssert(labelCount > 6, "Expected labels for Diameter, Distance, Length of Day, and labels displaying values for each.")
        
        XCTAssert(app.images[planet.imageName].exists, "Expected an image of the planet on the detail view.")
        
        app.navigationBars[planet.name].buttons["Solar System"].tap()
        
    }
    
}
