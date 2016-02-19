//
//  ObjectStoreProtocol.swift
//
//
//  Created by Cynthia Whitlatch on 2/4/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ObjectStoreProtocol: class {

    typealias Object: BaseObject, NSCoding
    
    var objects: [Object] { get set}
    
    func add(object: Object)
    func removeObject(object:Object)
    func removeObjectAtIndexPath(indexPath:NSIndexPath) -> Object
    func removeAllObjects()
    func objectForIndexPath(indexPath: NSIndexPath) -> Object
    func count() -> Int
    func allObjects() -> [Object]
    func save(file:String)
}

extension ObjectStoreProtocol {
    func add(object: Object) {
        self.objects.append(object)
    }
    
    func removeObject(object: Object) {
        self.objects.removeAll()        
    }
    
    func removeObjectAtIndexPath (indexPath:NSIndexPath) -> Object  {
        return self.objects.removeAtIndex(indexPath.row)
    }
    
    func removeAllObjects() {
        self.objects.removeAll(keepCapacity: false)
    }
    
    func objectForIndexPath(indexPath: NSIndexPath) -> Object {
        return self.objects[indexPath.row]
    }
    
    func count() -> Int {
        return self.objects.count
    }
    
    func allObjects() -> [Object] {
        return self.allObjects()
    }
    
    func save(file: String) {
        NSKeyedArchiver.archiveRootObject(self.objects, toFile: file)
    }
}