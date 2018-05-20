//
//  ViewController.swift
//  iOSndLesson3Challenge
//
//  Created by Sean Conrad on 5/19/18.
//  Copyright © 2018 Sean Conrad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    
    @IBOutlet weak var lockTextFieldSwitch: UISwitch!
    
    let zipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()
    let currencyTextFieldDelegate = CurrencyTextFieldDelegate()
    let lockableTextFieldDelegate = LockableTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.invalidEntry(_:)), name: NSNotification.Name.UIApplicationWillEnterForeground, object: nil)

        // Do any additional setup after loading the view, typically from a nib.
        
        self.zipCodeTextField.delegate = zipCodeTextFieldDelegate
        self.currencyTextField.delegate = currencyTextFieldDelegate
        self.lockableTextField.delegate = lockableTextFieldDelegate
        
        currencyTextField.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc public func invalidEntry(_ message: String) {
        let alert = UIAlertController(title: "Invalid entry", message: "This is America, we only have numbers in our zip codes", preferredStyle: .alert )
        present(alert, animated: true, completion: nil)
    }


}

