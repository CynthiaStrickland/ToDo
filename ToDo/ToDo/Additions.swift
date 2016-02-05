//
//  Additions.swift
//  ToDo
//
//  Created by Cynthia Whitlatch on 2/4/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    static func archiverPath() -> String {
        guard let archivePath = NSURL.archiverURL().path else {
            fatalError("Error") }
        return archivePath
        }
    }
extension NSURL {
    class func documentsDirectory() -> NSURL {
        guard let documentsDirectory = NSFileManager.defaultManager().URLsForDirectory(.DocumentationDirectory, inDomains: .UserDomainMask.first)  else { fatalError("Error") }
        return documentsDirectory
    }
    
    class func archiverURL(storeId: String = "archive") -> NSURL
    return self.documentsDirectory().URLByAppendingPathComponent(storeId)
}



