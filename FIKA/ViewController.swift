//
//  ViewController.swift
//  FIKA
//
//  Created by Emanuel Hahn on 6/9/15.
//  Copyright (c) 2015 Emanuel Hahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageLabel2: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding a comment here to test commits.
        messageLabel.hidden = false
        messageLabel.text = enterNameTextField.text
        messageLabel2.hidden = false
        messageLabel2.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        messageLabel2.textColor = UIColor.redColor()
        
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Sent!", forState: UIControlState.Normal)
    }

}

