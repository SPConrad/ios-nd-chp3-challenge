//
//  LockableTextFieldDelegate.swift
//  iOSndLesson3Challenge
//
//  Created by Sean Conrad on 5/19/18.
//  Copyright © 2018 Sean Conrad. All rights reserved.
//

import Foundation
import UIKit

class LockableTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    public func lockOrUnlock(locked: Bool, textField: UITextField){
        textField.isEnabled = !locked
        if locked {
            textField.backgroundColor = UIColor.gray
        } else {
            textField.backgroundColor = UIColor.white
        }
    }
    
    
    
}
