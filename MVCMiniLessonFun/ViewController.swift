//
//  ViewController.swift
//  MVCMiniLessonFun
//
//  Created by Jordan Nelson on 10/15/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var artistTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    @IBAction func addButtonTouched(sender: AnyObject) {
        let song = Song(name: nameTextField.text!, artist: artistTextField.text!)
        SongController.sharedInstance.addSong(song)
        print("\(SongController.sharedInstance.allSongs.count) Songs in allSongs")
    }
    
    @IBAction func removeButtonTouched(sender: AnyObject) {
        SongController.sharedInstance.removeSong(SongController.sharedInstance.allSongs.last!)
        print("\(SongController.sharedInstance.allSongs.count) Songs in allSongs")
    }
}






