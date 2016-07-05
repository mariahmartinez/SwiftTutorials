//
//  ResultsController.swift
//  Roshambo
//
//  Created by Mariah Martinez on 7/5/16.
//  Copyright © 2016 Mariah Martinez. All rights reserved.
//

import UIKit

class ResultsController: UIViewController {
    
    var userChoice: String!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
     override func viewWillAppear(animated: Bool) {
        showResults()
    }
    
    func showResults() {
        let opponentChoice = randomPlay()
        var text: String
        let playString = (userChoice + " vs. " + opponentChoice)
        
        switch (userChoice!, opponentChoice) {
        case let (user, opponent) where user == opponent:
            text = (playString) + " ,it's a tie!"
        case ("rock", "scissors"), ("paper", "rock"), ("scissors", "paper"):
            text = "You win with! " + playString
        default:
            text = "You lose with " + playString
        }
        
        resultLabel.text = text
    }
    
    func randomPlay() -> String {
        let options = ["rock", "paper", "scissors"]
        let randomChoice = Int(arc4random_uniform(3))
        return options[randomChoice]
    }
    
    @IBAction private func playAgain() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
