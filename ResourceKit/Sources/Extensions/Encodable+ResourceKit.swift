//
//  Encodable+ResourceKit.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/28/18.
//  Copyright © 2018 Synthelytics LLC. All rights reserved.
//
//  REFERENCES:
//  1. https://www.swiftbysundell.com/posts/type-inference-powered-serialization-in-swift
//

import Foundation

extension Encodable {
    
    func encoded(using encoder: AnyEncoder = JSONEncoder()) throws -> Data {        
        return try encoder.encode(self)
    }
    
}
