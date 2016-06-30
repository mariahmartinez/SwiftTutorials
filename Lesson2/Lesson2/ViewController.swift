//
//  ViewController.swift
//  Lesson2
//
//  Created by Mariah Martinez on 6/28/16.
//  Copyright © 2016 Mariah Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var clickMeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func experiment() {
        
        // Different pickers 
        
        // Present the image picker
//        let controller = UIImagePickerController()
//        self.presentViewController(controller, animated: true, completion:nil)
//        self.presentViewController(controller, animated: true, completion: nil)
        
        // Present the Activity View Controller
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.presentViewController(controller, animated: true, completion: nil)

    }
}

