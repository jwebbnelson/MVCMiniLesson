//
//  Song.swift
//  MVCMiniLessonFun
//
//  Created by Jordan Nelson on 10/26/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import Foundation
import CoreData

class Song: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    convenience init (name: String, artist: String, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("Song", inManagedObjectContext: context)!
        
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.name = name
        self.artist = artist
    }
    
    
    
}
