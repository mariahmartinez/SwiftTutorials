//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Mariah Martinez on 7/5/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    let colors = [UIColor.redColor(), UIColor.orangeColor(),
                  UIColor.yellowColor(), UIColor.greenColor(),
                  UIColor.blueColor(), UIColor.purpleColor(),
                  UIColor.brownColor()];
    
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange,
                   repacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
            
        return true
    }

}


