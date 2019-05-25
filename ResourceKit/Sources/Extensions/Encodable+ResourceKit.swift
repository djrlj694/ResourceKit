//
//  Encodable+ResourceKit.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/30/18.
//  Copyright © 2019 djrlj694.dev. All rights reserved.
//
//  REFERENCES:
//  1. https://www.swiftbysundell.com/posts/type-inference-powered-serialization-in-swift
//

import Foundation

// MARK: - Public Protocol Extension | Additions

public extension Encodable {
    
    // MARK: Instance Methods
    
    /**
     Directly encodes any `Encodable` object using any given encoder conforming
     to the `AnyEncoder` protocol.

     This generic instance method returns an encoded representation of a value
     adopting the `Encodable` protocol. The encoder used must conform to the
     `AnyEncoder` protocol but is of type `JSONEncoder` by default.

     - Parameters
        - encoder: An encoder conforming to the `AnyEncoder` protocol.
     - Returns: An encoded object.
     */
    func encoded(using encoder: AnyEncoder = JSONEncoder()) throws -> Data {
        return try encoder.encode(self)
    }
    
}
