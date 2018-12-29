//
//  Bundle+ResourceKit.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/29/18.
//  Copyright © 2018 Synthelytics LLC. All rights reserved.
//

import Foundation

// MARK: - Public Struct Extension | Additions | Finding Resource Files

public extension Bundle {
    
    // MARK: Instance Methods
    
    /// Returns the file URL for the resource identified by the specified name
    /// and file extension.
    ///
    /// This generic instance method returns a type-inferred value, decoded from
    //  an object adopting the `Decodable` protocol.  The decoder used must
    /// conform to the `AnyDecoder` protocol but is of type `JSONDecoder` by
    /// default.
    ///
    /// - Parameter name: The name of the resource file.
    /// - Parameter ext: The extension of the resource file.
    /// - Returns: The file URL for the resource file or nil if the file could
    /// not be located.
    
    func url(
        forResource name: String?, withExtension ext: URL.ExtensionType
        ) -> URL?
    {
        return url(forResource: name, withExtension: ext.rawValue)
    }
    
}

