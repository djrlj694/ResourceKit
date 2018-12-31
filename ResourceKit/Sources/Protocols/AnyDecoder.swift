//
//  AnyDecoder.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/30/18.
//  Copyright © 2018 Synthelytics LLC. All rights reserved.
//
//  REFERENCES:
//  1. https://www.swiftbysundell.com/posts/type-inference-powered-serialization-in-swift
//

import Foundation

// MARK: - Public Protocol Declaration

/**
 A decoder type.

 Swift has no common built-in protocol for all decoder types. This protocol
 remedies that shortcoming. Furthermore, it enables type inference-based API
 support for decoder tpes conforming to the `AnyDecoder` protocol.
 */
public protocol AnyDecoder {
    
    /**
     Returns a type-inferred value, decoded from a `Data` object using
     decoder conforming to the `AnyDecoder` protocol.
    
     If the `Data` object is not syntacticlly valid, this generic instance
     method throws the `DecodingError.dataCorrupted(_:)` error. If a value
     within this object fails to decode, this method throws the corresponding
     error.
    
     - Parameters:
        - type: The type, adopting the `Decodable` protocol, of the value to
     decode from the supplied `Data` object.
        - data: The `Data` object to decode.
     - Returns: A decoded object adopting the `Decodable` protocol.
     */
    func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T
    
}

// MARK: - Protocol Extension | AnyDecoder

extension JSONDecoder: AnyDecoder {}

// MARK: - Protocol Extension | AnyDecoder

extension PropertyListDecoder: AnyDecoder {}
