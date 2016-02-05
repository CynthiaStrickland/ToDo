//
//  ToDo.swift
//  ToDo
//
//  Created by Cynthia Whitlatch on 2/4/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class ToDo: BaseObject, NSCoding {
    
    //Using typealias defers type definition of the exact type to our protocol adopter. Our protocol adopter weather it’s a class or a struct is responsible for defining the exact type, not the protocol itself. Think about it for a minute… think what it really means. It means we can write our ObjectStoreDelegate protocol to work with different types of objects as long as those objects inherit from BaseObject and implement NSCoding protocol
    
    let itemDescription: String
    let itemDate: NSDate
    
    init(itemDescription: String, itemDate: NSDate) {
        self.itemDate = itemDate
        self.itemDescription = itemDescription
    }


    //MARK: NSCoding

    @objc required convenience init(coder aDecoder: NSCoder) {
        guard let itemDescription = aDecoder.decodeObjectForKey("itemDescription") as? String else {fatalError("Something Is WRONG") }
        guard let itemDate = aDecoder.decodeObjectForKey("itemDate") as? NSDate else { fatalError("Something is WRONG") }
        self.init(itemDescription: itemDescription, itemDate:itemDate)
    }

    @objc func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.itemDescription, forKey: "itemDescription")
        aCoder.encodeObject(self.itemDate, forKey: "itemDate")
    }
}


