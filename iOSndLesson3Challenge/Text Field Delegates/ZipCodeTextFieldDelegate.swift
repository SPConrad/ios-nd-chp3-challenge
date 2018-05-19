//
//  ZipCodeTextViewDelegate.swift
//  iOSndLesson3Challenge
//
//  Created by Sean Conrad on 5/19/18.
//  Copyright © 2018 Sean Conrad. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    var zipCodeMaxLength = 5
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    
}
