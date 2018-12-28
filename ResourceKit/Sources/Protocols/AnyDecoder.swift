//
//  AnyDecoder.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/28/18.
//  Copyright © 2018 Synthelytics LLC. All rights reserved.
//
//  REFERENCES:
//  1. https://www.swiftbysundell.com/posts/type-inference-powered-serialization-in-swift
//

import Foundation

// MARK: - Protocol Declaration

// There's no common built-in protocol for all decoder types, so create one.

protocol AnyDecoder {
    
    func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T
    
}

// MARK: - Protocol Extension | AnyDecoder

extension JSONDecoder: AnyDecoder {}

// MARK: - Protocol Extension | AnyDecoder

extension PropertyListDecoder: AnyDecoder {}
