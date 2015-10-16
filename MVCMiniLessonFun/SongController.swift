//
//  SongController.swift
//  MVCMiniLessonFun
//
//  Created by Jordan Nelson on 10/15/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import Foundation

// CONTROLLER
class SongController {
    
    // Singleton
    static let sharedInstance = SongController()
    
    // AllSongs Property [Songs]
    var allSongs:[Song]
    
    init() {
        self.allSongs = []
        loadFromPersistentStore()
    }
    
    func loadFromPersistentStore() {
        // Grab songs in dictionary form
        let songDictionariesFromDefaults = NSUserDefaults.standardUserDefaults().objectForKey("Songs") as? [Dictionary<String,AnyObject>]
        
        if let songDictionaries = songDictionariesFromDefaults {
            // converts song dictionary array to song object array
            self.allSongs = songDictionaries.map({Song(dictionary:$0)!})
        }
    }
    
    func saveToPersistentStore() {
        // Save song dictionaries to NSUserDefaults
        // Song -> Dictionary 
        let songDictionaries = self.allSongs.map({$0.dictionaryRepresentation()})
        NSUserDefaults.standardUserDefaults().setValue(songDictionaries, forKey: "Songs")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    // ADDS Songs to the array
    func addSong(songprameter: Song) -> () {
        allSongs.append(songprameter)
        saveToPersistentStore()
    }
    
    // REMOVES Songs from the array
    func removeSong(specificSong: Song) -> () {
        let index = allSongs.indexOf(specificSong)
        
        if let itemIndex = index {
            allSongs.removeAtIndex(itemIndex)
        }
        saveToPersistentStore()
    }
}









