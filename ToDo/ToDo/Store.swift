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
    
    private init()
    {
        if let data = NSData(contentsOfURL: NSURL.archiveURL()) else {
            self.objects = [Object]()
            return
        }
        
        guard let storedObjects = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [Object] else {
            self.objects = [Object]()
        }
        
        self.objects = storedObjects
        
    }
    
    typealias Object = ToDo
    var objects = [Object]()
}