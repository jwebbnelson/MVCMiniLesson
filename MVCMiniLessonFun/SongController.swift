//
//  SongController.swift
//  MVCMiniLessonFun
//
//  Created by Jordan Nelson on 10/15/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import Foundation
import CoreData

// CONTROLLER
class SongController {
    
    // Singleton
    static let sharedInstance = SongController()
    
    // AllSongs Property [Songs]
    var allSongs:[Song] {
        
        let request = NSFetchRequest(entityName: "Song")
        
        let moc = Stack.sharedStack.managedObjectContext
        
        do {
           return try moc.executeFetchRequest(request) as! [Song]
        } catch {
            return []
        }
        
    }
    
    func saveToPersistentStore() {
      let moc = Stack.sharedStack.managedObjectContext
        do {
            try moc.save()
        } catch {
            print("Error saving \(error)")
        }
    }
    
    // ADDS Songs to the array
    func addSong(songprameter: Song) -> () {
        saveToPersistentStore()
    }
    
    // REMOVES Songs from the array
    func removeSong(specificSong: Song) -> () {
        if let moc = specificSong.managedObjectContext {
            moc.deleteObject(specificSong)
        }
        saveToPersistentStore()
    }
}









