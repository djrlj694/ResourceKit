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
    
     func url(
        forResource name: String?, withExtension ext: URL.ExtensionType
        ) -> URL?
     {
        return url(forResource: name, withExtension: ext.rawValue)
     }
    
}

