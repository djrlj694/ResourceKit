//
//  Data+ResourceKit.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/29/18.
//  Copyright © 2018 Synthelytics LLC. All rights reserved.
//
//  REFERENCES:
//  1. https://www.swiftbysundell.com/posts/type-inference-powered-serialization-in-swift
//  2. https://teamtreehouse.com/library/parsing-urls-data-and-floating-point-numbers
//

import Foundation

// MARK: - Public Class Extension | Additions

public extension Data {
    
    // MARK: Computed Instance Properties
    
    /// A Unicode string value representation of the data.
    ///
    /// This computed instance property renders its associated `Data` value
    /// into a Unicode string.  This can be useful when reviewing the content of
    /// a byte buffers, such as when downloading a JSON object from a REST API
    /// service.
    
    var stringDescription: String
    {
        return String(data: self, encoding: .utf8) ?? ""
    }

    // MARK: Instance Methods
    
    /// Directly decodes any `Decodable` object using any given decoder
    /// conforming to the `AnyDecoder` protocol.
    ///
    /// This generic instance method returns a type-inferred value, decoded from
    //  an object adopting the `Decodable` protocol.  The decoder used must
    /// conform to the `AnyDecoder` protocol but is of type `JSONDecoder` by
    /// default.
    ///
    /// - Parameter decoder: A decoder conforming to the `AnyDecoder` protocol.
    /// - Returns: A decoded object adopting the `Decodable` protocol.
    
    func decoded<T: Decodable>(
        using decoder: AnyDecoder = JSONDecoder()
        ) throws -> T
    {
        return try decoder.decode(T.self, from: self)
    }
    
}
