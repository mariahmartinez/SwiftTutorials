//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Mariah Martinez on 7/12/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {
    var history = [RPSMatch]()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("historyReuse") as UITableViewCell!
        let historyCell = self.history[indexPath.row]
    
        if (historyCell.p1.defeats(historyCell.p2)) {
            cell.textLabel!.text = "Player wins"
            if let label = cell.detailTextLabel {
                label.text = "\(historyCell.p1) .vs \(historyCell.p2)"
            }        } else if (historyCell.p1 == historyCell.p2) {
            cell.textLabel!.text = "It's a Tie"
            if let label = cell.detailTextLabel {
                label.text = "\(historyCell.p1) .vs \(historyCell.p2)"
            }        } else {
            cell.textLabel!.text = "Player lost"
            if let label = cell.detailTextLabel {
                label.text = "\(historyCell.p1) .vs \(historyCell.p2)"
            }
        }
        
        return cell
    }
    
    @IBAction func playAgainButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}