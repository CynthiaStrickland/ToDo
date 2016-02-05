//
//  ToDo.swift
//  ToDo
//
//  Created by Cynthia Whitlatch on 2/4/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class ToDo: BaseClass, NSCoding {
    
    let itemDescription: String
    let itemDate: NSDate
    
    init(itemDescription: String, itemDate: NSDate) {
        self.itemDate = itemDate
        self.itemDescription = itemDescription
//        super.init()
    }
}

    //MARK: NSCoding

    required init?(coder aDecoder: NSCoder)
    {
        guard let itemDescription = aDecoder.decodeObjectForKey("itemDescription") as? String else { fatalError("Something Is WRONG") }
        
        guard let itemDate = aDecoder.decodeObjectForKey("itemDate") as? NSDate else { fatalError("Something is WRONG")
            self.init(itemDescription: itemDescription, itemDate: itemDate)
    }

    func encodeWithCoder(aCoder: NSCoder)
        aCoder.encodeObject(self.itemDescription, forKey: "itemDescription")
        aCoder.encodeObject(self.itemDate, forKey: "itemDate")
    }



