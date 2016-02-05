//
//  BaseClass.swift
//  ToDo
//
//  Created by Cynthia Whitlatch on 2/4/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ObjectStoreProtocol: class {
    
    typealias Object: BaseClass, NSCoding
    
    var objects: [Object] { get set}
    
    func add(object: Object)
    func removeObject(object:Object)
    func removeObjectAtIndexPath(indexPath:NSIndexPath)
    func removeAllObjects()
    func objectAtIndex(index: Int) -> Object?
    func count() -> Int
    func allObjects() -> [Object]
    func save()
}

extension ObjectStoreProtocol {
    func add(object: Object) {
        self.objects.append(object)
    }
    
    func removeObject(object: Object) {
        self.objects.removeAll()
        
    }
    
    func removeObjectAtIndexPath(indexPath:NSIndexPath) {
        
    }
    
    func removeAllObjects() {
        
        self.save()
    }
    
    func objectAtIndex(index: Int) -> Object? {
        self.objects.append(object)
    }
    
    func count() {
        return self.objects.count
    }
    
    func allObjects:[Object] {
        return self.objects
    }
    
    func save() {
        NSKeyedUnarchiver.archiveRootObject(self.objects,
    }
    
    class Store: ObjectStoreProtocol {
        static let shared = Store()
        private init() {}
        typealias Object = ToDo
        var objects = [Object]()
    }
    
    let itemOne = ToDo(itemDescription: "Get milk.", itemDate: NSDate())
    let itemTwo = ToDo(itemDescription: "Get bacon.", itemDate: NSDate())
    
    Store.shared.add(itemOne)
    Store.shared.add(itemTwo)
    
    for item in Store.shared.allObjects() {
    print(item.itemDescription)
    }
    
}
