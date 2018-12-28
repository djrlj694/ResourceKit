//
//  Coordinate.swift
//  ResourceKitTests
//
//  Created by Robert L. Jones on 12/28/18.
//  Copyright © 2018 Synthelytics LLC. All rights reserved.
//
//  REFERENCES:
//  1. Stormy: https://teamtreehouse.com/library/the-end-6
//

import Foundation

struct Coordinate {
    let latitude: Double
    let longitude: Double
}

extension Coordinate: CustomStringConvertible {
    
    var description: String {
        return "\(latitude),\(longitude)"
    }
    
    static var cupertino: Coordinate {
        return Coordinate(latitude: 37.3230, longitude: -122.0322)
    }
    
}













