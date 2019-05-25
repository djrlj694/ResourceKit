//
//  URL+ResourceKit.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/30/18.
//  Copyright © 2019 djrlj694.dev. All rights reserved.
//
//  REFERENCES:
//  1. https://github.com/romiphadte/WWDC_2015/blob/master/WWDC_App/AudioController.m
//  2. https://stackoverflow.com/questions/28570627/how-to-find-file-uti-for-file-withouth-pathextension-in-a-path-in-swift
//

import Foundation

// MARK: - Public Struct Extension | Additions | File Utilities

public extension URL {
    
    // MARK: Enums
    
    /**
     Constants indicating a filename's extension.

     Only a few common filename extensions are defined here.  Over time, as the
     number of uunique use cases grows, it is expected that more filename
     extensions will be defined here.
     */
    enum ExtensionType: String {
        
        /// An audio type.
        case aif, caf, wav
        
        /// A data types.
        case json, plist, sqlite
        
        /// An image types.
        case pdf, png
        
        /// The default type.
        case none = ""
    }
    
}

// MARK: - Public Struct Extension | Additions | File Metadata

public extension URL {
    
    // MARK: Computed Instance Properties

    /**
     An `ExtensionType` value representation of the URL's path extension.

     For URLs that do not have a discernable path extension, an `ExtensionType`
     value of `none` is returned.
     */
    var extensionType: ExtensionType? {
        return ExtensionType(rawValue: pathExtension)
    }
    
    /// Localized or extension-hidden name as displayed to users.
    var localizedName: String? {
        let values = try? resourceValues(forKeys: [.localizedNameKey])
        
        return values?.localizedName
    }
    
    /// Uniform type identifier (UTI) for the resource.
    var typeIdentifier: String? {
        let values = try? resourceValues(forKeys: [.typeIdentifierKey])
        
        return values?.typeIdentifier
    }
    
}

// MARK: - Public Struct Extension | Additions | File Encoding/Decoding

public extension URL {
    
    // MARK: Computed Instance Properties
    
    /**
     An object that decodes instances of data types from decodable objects.

     If the URL's path extension has a defined `ExtensionType` value that maps
     to decoder that conforms to the `AnyDecoder` protocol, then a decoder
     appropriate for that path extension is returned.  Otherwise, a `nil` value
     is returned.
     */
    var decoder: AnyDecoder?
    {
        guard let ext = extensionType else { return nil }
        
        switch ext {
        case .json: return JSONDecoder()
        case .plist: return PropertyListDecoder()
        default: return nil
        }
    }
    
    /**
     An object that decodes instances of data types from decodable objects.

     If the URL's path extension has a defined `ExtensionType` value that maps
     to decoder that conforms to the `AnyDecoder` protocol, then a decoder
     appropriate for that path extension is returned.  Otherwise, a `nil` value
     is returned.
     */
    var encoder: AnyEncoder?
    {
        guard let ext = extensionType else { return nil }
        
        switch ext {
        case .json: return JSONEncoder()
        case .plist: return PropertyListEncoder()
        default: return nil
        }
    }
    
    // MARK: Instance Methods
    
    /**
     Directly decodes any `Decodable` object using, when defined, the decoder
     associated with the URL's path extension.

     This generic instance method returns a type-inferred value, decoded from an
     object adopting the `Decodable` protocol.

     - Returns: A decoded object adopting the `Decodable` protocol.
     */
    func decoded<T: Decodable>() throws -> T?
    {
        // TODO: Consider printing error messages.
        guard let decoder = decoder else { return nil }
        guard let data = try? Data(contentsOf: self) else { return nil }
        
        return try data.decoded(using: decoder)
    }
    
}
