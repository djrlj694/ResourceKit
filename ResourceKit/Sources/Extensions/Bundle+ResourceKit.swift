//
//  Bundle+ResourceKit.swift
//  ResourceKit
//
//  Created by Robert L. Jones on 12/30/18.
//  Copyright © 2019 djrlj694.dev. All rights reserved.
//

import Foundation

// MARK: - Public Struct Extension | Additions | Finding Resource Files

public extension Bundle {
    
    // MARK: Instance Methods
    
    /**
     Returns the full pathname for the resource identified by the specified file.
 
     The method first looks for a matching resource file in the non-localized
     resource directory of the specified bundle. If a matching resource file is
     not found, it then looks in the top level of an available language-specific
     .lproj folder. (The search order for the language-specific folders
     corresponds to the user’s preferences.) It does not recurse through other
     subfolders at any of these locations. For more details on how localized
     resources are found, read [The Bundle Search Pattern](https://developer.apple.com/library/archive/documentation/CoreFoundation/Conceptual/CFBundles/AccessingaBundlesContents/AccessingaBundlesContents.html#//apple_ref/doc/uid/10000123i-CH104-SW7)
     in [Bundle Programming Guide](https://developer.apple.com/library/archive/documentation/CoreFoundation/Conceptual/CFBundles/Introduction/Introduction.html#//apple_ref/doc/uid/10000123i).
 
     - Parameters:
        - file: An object adopting the `File` protocol.
     - Returns: The full pathname for the resource file or `nil` if the file
     could not be located.
     */
    func path(for file: File) -> String? {
        return path(forResource: file.stem, ofType: file.extension)
    }
    
    /**
     Returns the file URL for the resource identified by the specified file.
 
     If `extension` is an empty string or `nil`, the returned pathname is the
     first one encountered where the file name exactly matches name. For details
     on how localized resources are found, read read [The Bundle Search
     Pattern](https://developer.apple.com/library/archive/documentation/CoreFoundation/Conceptual/CFBundles/AccessingaBundlesContents/AccessingaBundlesContents.html#//apple_ref/doc/uid/10000123i-CH104-SW7)
     in [Bundle Programming Guide](https://developer.apple.com/library/archive/documentation/CoreFoundation/Conceptual/CFBundles/Introduction/Introduction.html#//apple_ref/doc/uid/10000123i).
 
     - Parameters:
        - file: An object adopting the `File` protocol.
     - Returns: The file URL for the resource file or `nil` if the file could
     not be located.
     */
    func url(for file: File) -> URL? {
        return url(forResource: file.stem, withExtension: file.extension)
    }
    
}
