//
//  Store.swift
//  ToDo
//
//  Created by Cynthia Whitlatch on 2/4/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Store: ObjectStoreProtocol {
    
    static let shared = Store()
    
    private init() {
        if let data = NSData(contentsOfURL:NSURL.archiveURL()), storedObjects = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [ToDo] {
            self.objects = storedObjects
        }
    }
        typealias Object = ToDo
        var objects = [Object]()
    
}






