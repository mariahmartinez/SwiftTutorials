//
//  ViewController.swift
//  Roshambo
//
//  Created by Mariah Martinez on 6/30/16.
//  Copyright © 2016 Mariah Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            let controller = segue.destinationViewController as! ResultsController
            controller.userChoice = determineUserShape(sender as! UIButton)
        }
    }
    
    private func determineUserShape(sender: UIButton) -> String {
        // Titles are set to one of: Rock, Paper, or Scissors
        let shape = sender.titleForState(.Normal)!
        return shape
    }
    
    
    @IBAction private func playRock(sender: UIButton) {
        performSegueWithIdentifier("play", sender: sender)
    }
    
    
    @IBAction private func playPaper(sender: UIButton) {
        performSegueWithIdentifier("play", sender: sender)
    }
    
    
    @IBAction private func playScissors(sender: UIButton) {
        performSegueWithIdentifier("play", sender: sender)
    }
}

