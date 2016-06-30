//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    /**
    * Randomly generates an Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "rollDice" {
            let controller = segue.destinationViewController as!
            DiceViewController
            controller.firstValue = self.randomDiceValue()
            controller.secondValue = self.randomDiceValue()
        }
    }

    @IBAction func rollTheDice() {
//        // METHOD 1
//        // Get the DiceViewController
//        var controller: DiceViewController
//        controller = self.storyboard?.instantiateViewControllerWithIdentifier("DiceViewController") as! DiceViewController
//        // Set the two values to random numbers from 1 to 6
//        controller.firstValue = self.randomDiceValue()
//        controller.secondValue = self.randomDiceValue()
//        // Present the view Controller
//        self.presentViewController(controller, animated: true, completion: nil)
        
//        // METHOD 2
//        performSegueWithIdentifier("rollDice", sender: self)
        
        // METHOD 3
        // In the RollViewController file, the rollTheDice method is empty.
        // In the Storyboard file, a segue connects the rollTheDice Button directly to the DiceViewController.
        // In the attributes inspector, the segue is given the identifier "rollDice”.
        
    }
    
    
}

