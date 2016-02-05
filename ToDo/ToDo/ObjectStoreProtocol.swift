//
//  ObjectStoreProtocol.swift
//  ToDo
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
        self.objects.removeAtIndex(indexPath.row)
    }
    
    func removeAllObjects() {
        self.removeAllObjects()
        self.save()
    }
    
    func objectAtIndex(index: Int) -> Object? {
        // ADD CODE
    }
    
    func count() -> Int {
        return self.objects.count
    }
    
    func allObjects() -> [Object] {
        // ADD CODE
    }
    
    func save(file: String) {
        NSKeyedArchiver.archiveRootObject(self.objects, toFile: file)
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
    


