//
//  ResourceKitTests.swift
//  ResourceKitTests
//
//  Created by Robert L. Jones on 12/27/18.
//  Copyright © 2018 Synthelytics LLC. All rights reserved.
//
//  RESOURCES:
//  1. https://www.objc.io/blog/2018/02/13/string-to-data-and-back/
//  2. https://www.swiftbysundell.com/posts/mocking-in-swift
//  3. https://www.swiftbysundell.com/posts/writing-end-to-end-json-mapping-tests-in-swift
//

import XCTest
@testable import ResourceKit

class ResourceKitTests: XCTestCase {

    //var coordinate: Coordinate!
    var currentWeather: CurrentWeather!
    var weather: Weather!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        //coordinate = Fake.DarkSky.coordinate
        //currentWeather = Fake.DarkSky.currentWeather
        //weather = Fake.DarkSky.weather
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        //coordinate = nil
        currentWeather = nil
        weather = nil
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testJSONDecoding() throws {
        let bundle = Bundle(for: type(of: self))
        
        guard let url = bundle.url(forResource: "DarkSkyForcastRequest", withExtension: "json") else {
            XCTFail("Missing file: DarkSkyForcastRequest.json")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            weather = try data.decoded()
            currentWeather = weather.currently
            
            print(currentWeather)
        }
        catch let error as NSError {
            print("Unresolved error \(error)")
        }
        
        //print(currentWeather)
        
        // We can't make any assumptions about the data here, since it can update
        // at any time. We'll simply verify that the data is there.
        //XCTAssertFalse(currentWeather.isEmpty)
        XCTAssertNotNil(weather)
        XCTAssertNotNil(currentWeather)
        XCTAssertTrue(currentWeather.temperature == 66.1)
        XCTAssertTrue(currentWeather.humidity == 0.83)
        XCTAssertTrue(currentWeather.precipProbability == 0.9)
        XCTAssertTrue(currentWeather.summary == "Drizzle")
        XCTAssertTrue(currentWeather.icon == "rain")
    }
    
}
