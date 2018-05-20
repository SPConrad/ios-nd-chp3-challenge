//
//  CurrencyTextFieldDelegate.swift
//  iOSndLesson3Challenge
//
//  Created by Sean Conrad on 5/19/18.
//  Copyright © 2018 Sean Conrad. All rights reserved.
//

import Foundation
import UIKit

class CurrencyTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    /// find how to move cursor positions
    
    
    var insertedCharacters = 0
    var postDecOrCom = 0
    let backSpaceCompare = "\\b"
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let text = textField.text!
        var stringArray = Array(text)
        
        let char = string.cString(using: String.Encoding.utf8)!
        let isBackSpace = strcmp(char, backSpaceCompare)
        if isBackSpace == -92 {
            print("Backspace was pressed")
            if (insertedCharacters > 2){
                insertedCharacters = insertedCharacters - 1
                postDecOrCom = postDecOrCom - 1
                if stringArray[2] == "."{
                    stringArray[1] = "0"
                } else {
                    stringArray.remove(at: 1)
                    if postDecOrCom == 0 {
                        postDecOrCom = 3
                        insertedCharacters = insertedCharacters - 1
                        stringArray.remove(at: 1)
                    }
                }
                textField.text = String(stringArray)
            } else if (insertedCharacters > 0) {
                stringArray[stringArray.count - (insertedCharacters)] = "0"
                textField.text = String(stringArray)
                insertedCharacters = insertedCharacters - 1
            }
        }
        if Int(string) != nil {
            let offset = (insertedCharacters < 2) ? 1 : 2
            if (insertedCharacters > 1){
                postDecOrCom = postDecOrCom + 1
            }
            
            let charToReplace = stringArray[stringArray.count - (insertedCharacters + offset)]
            let charToInsert = Character(string)
            
            if charToReplace == "$" {
                if (postDecOrCom > 3){
                    stringArray.insert(",", at: 1)
                    insertedCharacters = insertedCharacters + 1
                    postDecOrCom = 1
                }
                stringArray.insert(charToInsert, at: 1)
            } else {
                stringArray[stringArray.count - (insertedCharacters + offset)] = charToInsert
        }
            
            let newString = String(stringArray)
            
            insertedCharacters = insertedCharacters + 1
            
            textField.text = newString
        }
            
        return false
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        insertedCharacters = 0
        postDecOrCom = 0
        textField.text = "$0.00"
        return false
    }
}
