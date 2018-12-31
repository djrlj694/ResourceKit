//
//  File.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/30/18.
//  Copyright © 2018 Synthelytics LLC. All rights reserved.
//

import Foundation

// MARK: - Public Protocol Declaration

/**
 An file type.

 Swift has no common built-in protocol for all file types.  This protocol
 remedies that shortcoming.
 */
public protocol File {
    
    /// The file's name without its extension.
    var stem: String? { get }
    
    /// The file's extension, if any.
    var `extension`: String? { get }
    
}

// MARK: - Struct Extension | File Protocol

extension String: File {
    
    // MARK: Public Computed Instance Properties
    
    public var stem: String? {
        return parts.dropLast().joined(separator: ".")
    }
    
    public var `extension`: String? {
        return parts.last
    }
    
    // MARK: Private Computed Instance Properties
    
    /// The parts of the file's name, if any.
    private var parts: [String] {
         return self.split(separator: ".").compactMap { String($0) }
    }
    
}

// MARK: - Struct Extension | File Protocol

extension URL: File {
    
    public var stem: String? {
        return deletingPathExtension().lastPathComponent
    }
    
    public var `extension`: String? {
        return pathExtension
    }
    
}
