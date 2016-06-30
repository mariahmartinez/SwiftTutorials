//
//  ViewController.swift
//  MyMeme
//
//  Created by Mariah Martinez on 6/23/16.
//  Copyright © 2016 Mariah Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
}

