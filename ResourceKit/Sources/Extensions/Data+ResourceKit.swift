//
//  Data+ResourceKit.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/28/18.
//  Copyright © 2018 Synthelytics LLC. All rights reserved.
//
//  REFERENCES:
//  1. https://www.swiftbysundell.com/posts/type-inference-powered-serialization-in-swift
//  2. https://teamtreehouse.com/library/parsing-urls-data-and-floating-point-numbers
//

import Foundation

// MARK: - Class Extension | Addtions

extension Data {
    
    // MARK: Computed Instance Properties
    
    var stringDescription: String {
        return String(data: self, encoding: .utf8) ?? ""
    }

    // MARK: Instance Methods
    
    // Decode any Decodable type directly using any decoder conforming to the AnyDecoder protocol.
    
    func decoded<T: Decodable>(using decoder: AnyDecoder = JSONDecoder()) throws -> T {
        return try decoder.decode(T.self, from: self)
    }
    
}
