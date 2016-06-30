//
//  ViewController.swift
//  ViewControllersLesson
//
//  Created by Mariah Martinez on 6/30/16.
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
        // Present the image picker
        //        let controller = UIImagePickerController()
        //        self.presentViewController(controller, animated: true, completion:nil)
        
        // Present the Activity View Controller
        //        let image = UIImage()
        //        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        //        self.presentViewController(controller, animated: true, completion: nil)
        
        
        // Alert Controller
        let controller = UIAlertController()
        controller.title = "Test Alert"
        controller.message = "This is a test Alert"
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default) {
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        controller.addAction(okAction)
        self.presentViewController(controller, animated: true, completion: nil)
    }
}

