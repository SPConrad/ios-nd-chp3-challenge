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
    let zipCodeMaxLength = 5
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("string: \(string)")
        print("range : \(range)")
        if Int(string) != nil {
            let text = textField.text
            if (text?.count)! >= 5{
                return false
            }
        }
//        else {
//            UIView.animate(withDuration: 0.3, delay: 1, options: UIViewAnimationOptions.curveEaseInOut, animations: {
//                textField.backgroundColor = UIColor.red
//            }, completion: nil)
//            textField.backgroundColor = UIColor.white
        
        
        /// consider implementing google maps API to state valid/invalid zip code and/or the town/city of a valid zip code
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text)
    }
    
}
