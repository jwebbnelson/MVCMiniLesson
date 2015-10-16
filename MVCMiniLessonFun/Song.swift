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
    
    init(name:String, artist:String){
        self.name = name
        self.artist = artist
    }
    
   
}

// Equatable Protocol Method
func ==(lhs: Song, rhs: Song) -> Bool {
    return (lhs.name == rhs.name) && (lhs.artist == rhs.artist)
}










