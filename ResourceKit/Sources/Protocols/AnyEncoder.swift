//
//  AnyEncoder.swift
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
 An encoder type.

 Swift has no common built-in protocol for all encoder types.  This protocol
 remedies that shortcoming.
 */
public protocol AnyEncoder {
    
    /**
     Returns an encoded representation, a `Data` object using an encoder
     conforming to the `AnyEncoder` protocol, of a type-inferred value.

     If there's a problem encoding the type-inferred value, this method throws
     an error based on the type of problem:
     * The value fails to encode or contains a nested value that fails to
     encode—this method throws the corresponding error.
     * The value can't be encoded as a array or object (in the format specified
     by the encoder)—this method throws the `EncodingError.invalidValue(_:_:)`
     error.

     - Parameters:
        - type: The type, adopting to the `Decodable` protocol, of the value to
     decode from the supplied `Data` object.
        - value: The value, adopting the `Encodable` protocol, to encode as a
    `Data` object using an encoder conforming to the `AnyEncoder` protocol.
     - Returns: A `Data` object, encoded using an encoder conforming to the
     `AnyEncoder` protocol.
     */
    func encode<T: Encodable>(_ value: T) throws -> Data
    
}

// MARK: - Protocol Extension | AnyEncoder

extension JSONEncoder: AnyEncoder {}

// MARK: - Protocol Extension | AnyEncoder

extension PropertyListEncoder: AnyEncoder {}
