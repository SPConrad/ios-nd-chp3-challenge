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
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    
    
}
