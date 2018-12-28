//
//  AnyEncoder.swift
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

protocol AnyEncoder {
    
    func encode<T: Encodable>(_ value: T) throws -> Data
    
}

// MARK: - Protocol Extension | AnyEncoder

extension JSONEncoder: AnyEncoder {}

// MARK: - Protocol Extension | AnyEncoder

extension PropertyListEncoder: AnyEncoder {}
