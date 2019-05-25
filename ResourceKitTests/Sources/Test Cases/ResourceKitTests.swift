//
//  ResourceKitTests.swift
//  ResourceKitTests
//
//  Created by Robert L. Jones on 12/30/18.
//  Copyright © 2019 djrlj694.dev. All rights reserved.
//
//  RESOURCES:
//  1. https://www.objc.io/blog/2018/02/13/string-to-data-and-back/
//  2. https://www.swiftbysundell.com/posts/mocking-in-swift
//  3. https://www.swiftbysundell.com/posts/writing-end-to-end-json-mapping-tests-in-swift
//

import XCTest
@testable import ResourceKit

// MARK: - Class Declaration

class ResourceKitTests: XCTestCase {

    // MARK: Instance Properties
    
    let jsonFile = "DarkSkyForecastRequest.json"
    
    //var coordinate: Coordinate!
    var currentWeather: CurrentWeather!
    var weather: Weather!
    
    // MARK: Instance Methods
    
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
        testDecoding(jsonFile) { url in
            self.testDecodingDarkSkyModels(from: url)
        }
    }
    
}

// MARK: - Class Extension | Overrides

extension ResourceKitTests {
    
    // MARK: Setup and Teardown
    
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
    
}

// MARK: - Private Class Extension | Additions

private extension ResourceKitTests {

    func testDecoding(_ file: String, completion: (URL) -> Void) {
        let bundle = Bundle(for: type(of: self))
        
        guard let url = bundle.url(for: file) else {
            XCTFail("Missing file: \(file)")
            return
        }
        
        print("url = \(url)")
        print("url.stem = \(url.stem ?? "")")
        print("url.extension = \(url.extension ?? "")")
        print("url.pathExtension = \(url.pathExtension)")
        print("url.typeIdentifier = \(url.typeIdentifier ?? "")")
        print("url.localizedName = \(url.localizedName ?? "")")
        
        completion(url)
    }

    func testDecodingDarkSkyModels(from url: URL) {
        
        do {
            weather = try url.decoded()
            currentWeather = weather.currently
            print(currentWeather)
        }
        //catch DecodingError.dataCorrupted(<#T##DecodingError.Context#>)
        catch let error {
            print("Unresolved error: \(error)")
        }

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
