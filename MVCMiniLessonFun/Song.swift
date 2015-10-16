//
//  Song.swift
//  MVCMiniLessonFun
//
//  Created by Jordan Nelson on 10/15/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import Foundation

// MODEL OBJECT
struct Song: Equatable {
    
    let name: String
    let artist: String
    
    // Local initializer
    init(name:String, artist:String){
        self.name = name
        self.artist = artist
    }
    
    // init from NSUserdefaults
    init?(dictionary: [String: AnyObject]) {
        guard let nameFromDictionary = dictionary["name"] as? String, let artistFromDictionary = dictionary["artist"] as? String else {
            self.name = ""
            self.artist = ""
            return nil
        }
        self.name = nameFromDictionary
        self.artist = artistFromDictionary
    }
   
    
    // Saving to NSUserDefaults 
    func dictionaryRepresentation() -> [String: AnyObject] {
        return [
            "name": self.name,
            "artist": self.artist
        ]
    }
}

// Equatable Protocol Method
func ==(lhs: Song, rhs: Song) -> Bool {
    return (lhs.name == rhs.name) && (lhs.artist == rhs.artist)
}










