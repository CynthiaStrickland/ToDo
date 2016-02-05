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
    
    static func archivePath() -> String {
        guard let archivePath = NSURL.archiveURL().path else { fatalError("Can't get archive path. Error origin: \(__FUNCTION__)") }
        return archivePath
    }
    
}

extension NSURL {
    
    class func documentsDirectory() -> NSURL {
        guard let documentsDirectory = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first else { fatalError("Error getting Documents directory. Error origin: \(__FUNCTION__)") }
        return documentsDirectory
    }
    
    class func archiveURL(storeId: String = "archive") -> NSURL {
        return self.documentsDirectory().URLByAppendingPathComponent(storeId)
    }
    
}

