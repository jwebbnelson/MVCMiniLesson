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
    var allSongs:[Song] = []
    
    // ADDS Songs to the array
    func addSong(songprameter: Song) -> () {
        allSongs.append(songprameter)

    }
    
    // REMOVES Songs from the array
    func removeSong(specificSong: Song) -> () {
        let index = allSongs.indexOf(specificSong)
        
        if let itemIndex = index {
            allSongs.removeAtIndex(itemIndex)
        }
    }
}









