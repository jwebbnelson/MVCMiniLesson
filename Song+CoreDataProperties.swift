//
//  Song+CoreDataProperties.swift
//  MVCMiniLessonFun
//
//  Created by Jordan Nelson on 10/26/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Song {

    @NSManaged var name: String?
    @NSManaged var artist: String?

}
